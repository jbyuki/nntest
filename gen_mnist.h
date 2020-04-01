#include <cmath>
#include <ctime>
#include <cstdlib>
#include <mkl.h>

const int NPARAMS = 79510;
const int NIN = 784;
const int NOUT = 10;

double sigmoid(double x)
{
        return 1./(1. + std::exp(-x));
}

double dsigmoid(double x)
{
        double z = sigmoid(x);
        return z*(1.0-z);
}

void init_params(double* params)
{
        std::srand((unsigned)std::time(nullptr));
        for(int i=0; i<NPARAMS; ++i) {
                params[i] = 2.*((double)std::rand()/(double)RAND_MAX)-1.;
        }
}

void forward(const double* params, const double* in, double* out)
{
        static double y[110];

        // layer 0 -> 1
        cblas_dgemv(CblasRowMajor, CblasNoTrans,100, 784, 1.0, &params[0],784, &in[0], 1, 0.0, &y[0], 1);
        cblas_daxpy(100, 1.0, &params[78400], 1, &y[0], 1);
        for(int i=0; i<100;++i) {
                y[0+i] = sigmoid(y[0+i]);
        }

        // layer 1 -> 2
        cblas_dgemv(CblasRowMajor, CblasNoTrans,10, 100, 1.0, &params[78500],100, &y[0], 1, 0.0, &out[0], 1);
        cblas_daxpy(10, 1.0, &params[79500], 1, &out[0], 1);
        for(int i=0; i<10;++i) {
                out[0+i] = sigmoid(out[0+i]);
        }
}

double backward(const double* params, double* dparams, const double* in, const double* exp)
{
        static double o[110];
        static double y[110];

        // layer 0 -> 1
        cblas_dgemv(CblasRowMajor, CblasNoTrans,100, 784, 1.0, &params[0],784, &in[0], 1, 0.0, &o[0], 1);
        cblas_daxpy(100, 1.0, &params[78400], 1, &o[0], 1);
        for(int i=0; i<100;++i) {
                y[0+i] = sigmoid(o[0+i]);
        }

        // layer 1 -> 2
        cblas_dgemv(CblasRowMajor, CblasNoTrans,10, 100, 1.0, &params[78500],100, &y[0], 1, 0.0, &o[100], 1);
        cblas_daxpy(10, 1.0, &params[79500], 1, &o[100], 1);
        for(int i=0; i<10;++i) {
                y[100+i] = sigmoid(o[100+i]);
        }
        static double back[110];

        double loss = 0.;
        for(int i=0; i<10;++i) {
                back[100+i] = y[100+i]- exp[i];
                loss += 0.5*back[100+i]*back[100+i];
        }

        // layer 2
        for(int i=0; i<10; ++i) {
                back[100+i] *= dsigmoid(o[100+i]);
        }
        cblas_daxpy(10, 1.0, &back[100], 1, &dparams[79500], 1);
        cblas_dger(CblasRowMajor, 10,100, 1.0, &back[100], 1, &y[0], 1, &dparams[78500], 100);

        // layer 1
        cblas_dgemv(CblasRowMajor, CblasTrans, 10,100, 1.0, &params[78500], 100, &back[100], 1, 0.0, &back[0], 1);
        for(int i=0; i<100; ++i) {
                back[0+i] *= dsigmoid(o[0+i]);
        }
        cblas_daxpy(100, 1.0, &back[0], 1, &dparams[78400], 1);
        cblas_dger(CblasRowMajor, 100,784, 1.0, &back[0], 1, &in[0], 1, &dparams[0], 784);
        return loss;
}

void train(const double* in, const double* out, int size, double* params, int nepochs, int batchsize, double alpha)
{
        int* indices = (int*)malloc(size*sizeof(int));
        std::srand((unsigned)std::time(nullptr));
        for(int i=0; i<size; ++i) {
                indices[i] = i;
        }
        double* gradient = (double*)malloc(NPARAMS*sizeof(double));
        for(int i=0; i<nepochs; ++i) {
                for(int i=0; i<size; ++i) {
                        int a = rand()%size;
                        int b = rand()%size;
                        if(a == b) {
                                continue;
                        }
                        int tmp = indices[a];
                        indices[a] = indices[b];
                        indices[b] = tmp;
                }
                double loss = 0.;
                for(int j=0; j<size; j += batchsize) {
                        for(int k=0; k<NPARAMS; ++k) {
                                gradient[k] = 0.;
                        }
                        int last = j+batchsize > size ? size : j+batchsize;
                        for(int k=j; k<last; ++k) {
                                loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
                        }
                        cblas_daxpy(NPARAMS, -alpha/(double)batchsize, &gradient[0], 1, &params[0], 1);
                }
                (void) loss;
        }
        free(indices);
        free(gradient);
}
