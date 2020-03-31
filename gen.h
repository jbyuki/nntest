#include <cmath>
#include <ctime>
#include <cstdlib>
#include <mkl.h>

const int NPARAMS = 17;
const int NIN = 2;
const int NOUT = 1;

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
        static double y[5];

        // layer 0 -> 1
        cblas_dgemv(CblasRowMajor, CblasNoTrans,4, 2, 1.0, &params[0],2, &in[0], 1, 0.0, &y[0], 1);
        cblas_daxpy(4, 1.0, &params[8], 1, &y[0], 1);
        for(int i=0; i<4;++i) {
                y[0+i] = sigmoid(y[0+i]);
        }

        // layer 1 -> 2
        cblas_dgemv(CblasRowMajor, CblasNoTrans,1, 4, 1.0, &params[12],4, &y[0], 1, 0.0, &out[0], 1);
        cblas_daxpy(1, 1.0, &params[16], 1, &out[0], 1);
        for(int i=0; i<1;++i) {
                out[0+i] = sigmoid(out[0+i]);
        }
}

double backward(const double* params, double* dparams, const double* in, const double* exp)
{
        static double o[5];
        static double y[5];

        // layer 0 -> 1
        cblas_dgemv(CblasRowMajor, CblasNoTrans,4, 2, 1.0, &params[0],2, &in[0], 1, 0.0, &o[0], 1);
        cblas_daxpy(4, 1.0, &params[8], 1, &o[0], 1);
        for(int i=0; i<4;++i) {
                y[0+i] = sigmoid(o[0+i]);
        }

        // layer 1 -> 2
        cblas_dgemv(CblasRowMajor, CblasNoTrans,1, 4, 1.0, &params[12],4, &y[0], 1, 0.0, &o[4], 1);
        cblas_daxpy(1, 1.0, &params[16], 1, &o[4], 1);
        for(int i=0; i<1;++i) {
                y[4+i] = sigmoid(o[4+i]);
        }
        static double back[5];

        double loss = 0.;
        for(int i=0; i<1;++i) {
                back[4+i] = y[4+i]- exp[i];
                loss += 0.5*back[4+i]*back[4+i];
        }

        // layer 2
        for(int i=0; i<1; ++i) {
                back[4+i] *= dsigmoid(o[4+i]);
        }
        cblas_daxpy(1, 1.0, &back[4], 1, &dparams[16], 1);
        cblas_dger(CblasRowMajor, 1,4, 1.0, &back[4], 1, &y[0], 1, &dparams[12], 4);

        // layer 1
        cblas_dgemv(CblasRowMajor, CblasNoTrans, 4,1, 1.0, &params[12], 1, &back[4], 1, 0.0, &back[0], 1);
        for(int i=0; i<4; ++i) {
                back[0+i] *= dsigmoid(o[0+i]);
        }
        cblas_daxpy(4, 1.0, &back[0], 1, &dparams[8], 1);
        cblas_dger(CblasRowMajor, 4,2, 1.0, &back[0], 1, &in[0], 1, &dparams[0], 2);
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
                                loss += backward(params, gradient, &in[indices[k]*2], &out[indices[k]*1]);
                        }
                        for(int k=0; k<NPARAMS; ++k) {
                                params[k] -= alpha * gradient[k] / (double)batchsize;
                        }
                }
                (void) loss;
        }
}
