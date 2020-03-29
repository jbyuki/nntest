#include <cmath>
#include <ctime>
#include <cstdlib>
#include <iostream>

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
        for(int i=0; i<100;++i) {
                y[0+i] = params[0+785*i];
                for(int j=0; j<784;++j) {
                        y[0+i] += params[0+785*i+j+1]*in[0+j];
                }
                y[0+i] = sigmoid(y[0+i]);
        }

        // layer 1 -> 2
        for(int i=0; i<10;++i) {
                out[0+i] = params[78500+101*i];
                for(int j=0; j<100;++j) {
                        out[0+i] += params[78500+101*i+j+1]*y[0+j];
                }
                out[0+i] = sigmoid(out[0+i]);
        }
}

double backward(const double* params, double* dparams, const double* in, const double* exp)
{
        static double o[110];
        static double y[894];
        for(int i=0; i<784; ++i) {
                y[i] = in[i];
        }

        // layer 0 -> 1
        for(int i=0; i<100;++i) {
                o[0+i] = params[0+i*785];
                for(int j=0; j<784; ++j) {
                        o[0+i] += params[0+i*785+j+1] * y[0+j];
                }
                y[784+i] = sigmoid(o[0+i]);
        }

        // layer 1 -> 2
        for(int i=0; i<10;++i) {
                o[100+i] = params[78500+i*101];
                for(int j=0; j<100; ++j) {
                        o[100+i] += params[78500+i*101+j+1] * y[784+j];
                }
                y[884+i] = sigmoid(o[100+i]);
        }
        static double back[110];

        double loss = 0.;
        for(int i=0; i<10;++i) {
                back[100+i] = y[884+i]- exp[i];
                loss += 0.5*back[100+i]*back[100+i];
        }

        // layer 2
        for(int i=0; i<10; ++i) {
                back[100+i] *= dsigmoid(o[100+i]);
                dparams[78500+i*101+0] += back[100+i];
                for(int j=0; j<100; ++j) {
                        dparams[78500+i*101+j+1] += back[100+i]*y[784+j];
                }
        }
        // layer 1
        for(int i=0; i<100; ++i) {
                back[0+i] = 0.;
                for(int j=0; j<10; ++j) {
                        back[0+i] += back[100+j]*params[78500+j*101+i+1];
                }
                back[0+i] *= dsigmoid(o[0+i]);
                dparams[0+i*785+0] += back[0+i];
                for(int j=0; j<784; ++j) {
                        dparams[0+i*785+j+1] += back[0+i]*y[0+j];
                }
        }
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
				std::cout << "Epoch : " << i << std::endl;
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
                        for(int k=0; k<NPARAMS; ++k) {
                                params[k] -= alpha * gradient[k] / (double)batchsize;
                        }
                }
				std::cout << "Loss : " << loss << std::endl;
        }
}
