#include "gen.h"
#include <vector>

#include <iostream>


auto main() -> int
{
	std::vector<double> in_data {
		0., /* ^ */ 0.,
		0., /* ^ */ 1.,
		1., /* ^ */ 0.,
		1., /* ^ */ 1.,
	};
	
	std::vector<double> out_data {
		/* = */ 0.,
		/* = */ 1.,
		/* = */ 1.,
		/* = */ 0.,
	};
	
	std::vector<double> params(NPARAMS);
	init_params(params.data());
	
	
	std::vector<double> gradient(NPARAMS, 0.);
	backward(params.data(), gradient.data(), &in_data[2], &out_data[1]);
	
	std::vector<double> approx_gradient(NPARAMS, 0.);
	double epsilon = 1e-7;
	double diff = 0.0;
	for(int i=0; i<NPARAMS; ++i) {
		double end;
		std::vector<double> end_params(params);
		end_params[i] += epsilon;
		forward(end_params.data(), &in_data[2], &end);
		double end_loss = 0.5*(end - out_data[1])*(end - out_data[1]);
	
		double start;
		std::vector<double> start_params(params);
		start_params[i] -= epsilon;
		forward(start_params.data(), &in_data[2], &start);
		double start_loss = 0.5*(start - out_data[1])*(start - out_data[1]);
	
		approx_gradient[i] = (end_loss-start_loss)/(2.*epsilon);
		std::cout << "approx_gradient[" << i << "] = " << approx_gradient[i] << std::endl;
		std::cout << "gradient[" << i << "] = " << gradient[i] << std::endl;
		diff += (approx_gradient[i]-gradient[i])*(approx_gradient[i]-gradient[i]);
	}
	
	std::cout << "diff : " << std::sqrt(diff) << std::endl;
	
	train(in_data.data(), out_data.data(), 4, params.data(), 1000000, 4, 0.01);
	
	double result;
	forward(params.data(), &in_data[0], &result);
	std::cout << "0 & 0 = " << result << std::endl;
	
	forward(params.data(), &in_data[2], &result);
	std::cout << "0 & 1 = " << result << std::endl;
	
	forward(params.data(), &in_data[4], &result);
	std::cout << "1 & 0 = " << result << std::endl;
	
	forward(params.data(), &in_data[6], &result);
	std::cout << "1 & 1 = " << result << std::endl;
	system("PAUSE");
	return 0;
}

