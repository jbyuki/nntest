#include <cmath>
#include <ctime>
#include <cstdlib>

const int NPARAMS = 13;
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
        static double y[4];

        // layer 0 -> 1
        for(int i=0; i<3;++i) {
                y[0+i] = 0.f;
                for(int j=0; j<2;++j) {
                        y[0+i] += params[0+2*i+j]*in[0+j];
                }
                y[0+i] += params[6+i];
                y[0+i] = sigmoid(y[0+i]);
        }

        // layer 1 -> 2
        for(int i=0; i<1;++i) {
                out[0+i] = 0.f;
                for(int j=0; j<3;++j) {
                        out[0+i] += params[9+3*i+j]*y[0+j];
                }
                out[0+i] += params[12+i];
                out[0+i] = sigmoid(out[0+i]);
        }
}

double backward(const double* params, double* dparams, const double* in, const double* exp)
{
        static double o[4];
        static double y[4];

        // layer 0 -> 1
        for(int i=0; i<3;++i) {
                o[0+i] = 0.f;
                for(int j=0; j<2; ++j) {
                        o[0+i] += params[0+i*2+j] * in[j];
                }
                o[0+i] += params[6+i];
                y[0+i] = sigmoid(o[0+i]);
        }

        // layer 1 -> 2
        for(int i=0; i<1;++i) {
                o[3+i] = 0.f;
                for(int j=0; j<3; ++j) {
                        o[3+i] += params[9+i*3+j] * y[0+j];
                }
                o[3+i] += params[12+i];
                y[3+i] = sigmoid(o[3+i]);
        }
        static double back[4];

        double loss = 0.;
        for(int i=0; i<1;++i) {
                back[3+i] = y[3+i]- exp[i];
                loss += 0.5*back[3+i]*back[3+i];
        }

        // layer 2
        for(int i=0; i<1; ++i) {
                back[3+i] *= dsigmoid(o[3+i]);
                dparams[12+i] += back[3+i];
                for(int j=0; j<3; ++j) {
                        dparams[9+i*3+j] += back[3+i]*y[0+j];
                }
        }

        // layer 1
        for(int i=0; i<3; ++i) {
                back[0+i] = 0.;
                for(int j=0; j<1; ++j) {
                        back[0+i] += back[3+j]*params[9+j*3+i];
                }
                back[0+i] *= dsigmoid(o[0+i]);
                dparams[6+i] += back[0+i];
                for(int j=0; j<2; ++j) {
                        dparams[0+i*2+j] += back[0+i]*in[j];
                }
        }
        return loss;
}

void adam(const double* in, const double* out, int size, double* params, int nepochs, int batchsize, double alpha = 0.001, double beta1 = 0.9, double beta2 = 0.999, double epsilon = 1e-8)
{
        int* indices = (int*)malloc(size*sizeof(int));
        std::srand((unsigned)std::time(nullptr));
        for(int i=0; i<size; ++i) {
                indices[i] = i;
        }
        double* gradient = (double*)malloc(NPARAMS*sizeof(double));
        double beta1t = beta1;
        double beta2t = beta2;
        double t = 0.0;
        double* m = (double*)malloc(NPARAMS*sizeof(double));
        double* v = (double*)malloc(NPARAMS*sizeof(double));
        for(int i=0; i<NPARAMS; ++i) {
                m[i] = 0.0;
                v[i] = 0.0;
        }
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
                        double alphat = alpha * std::sqrt(1.0 - beta2t)/((1.0 - beta1t)*(double)batchsize);
                        for(int i=0; i<NPARAMS; ++i) {
                                m[i] = beta1*m[i] + (1-beta1)*gradient[i];
                                v[i] = beta2*v[i] + (1-beta2)*gradient[i]*gradient[i];
                                params[i] -= alphat*m[i]/(std::sqrt(v[i] + epsilon));
                        }
                        beta1t *= beta1;
                        beta2t *= beta2;
                }
                (void) loss;
        }
        free(v);
        free(m);
        free(indices);
        free(gradient);
}
