#include <random>

#include <iostream>

#include <cmath>


auto sigmoid(float x) -> float
{
	return 1.f/(1.f + std::exp(-x));
}

auto dsigmoid(float x) -> float
{
	float z = 1.f + std::exp(-x);
	return 1.f/(z*z);
}

float a1, a2, b;

std::random_device rd;
std::mt19937 gen(rd());
std::uniform_real_distribution<float> dis(-1.f, 1.f);

std::vector<float> data {
	0.f, /* ^ */ 0.f, /* = */ 0.f,
	0.f, /* ^ */ 1.f, /* = */ 1.f,
	1.f, /* ^ */ 0.f, /* = */ 1.f,
	1.f, /* ^ */ 1.f, /* = */ 0.f,
};

int nepochs = 100000;

float alpha = 0.01f;


auto main() -> int
{
	a1 = dis(gen);
	a2 = dis(gen);
	b = dis(gen);
	
	std::cout << "Initial a1: " << a1 << std::endl;
	std::cout << "Initial a2: " << a2 << std::endl;
	std::cout << "Initial b: " << b << std::endl;
	
	for(int i=0; i<nepochs; ++i) {
		float loss = 0.f;
		float da1 = 0.f, da2 = 0.f, db = 0.f;
		for(int j=0; j<4; ++j) {
			float x1 = data[3*j], x2 = data[3*j+1], t = data[3*j+2];
			float o = a1*x1+a2*x2+b;
			float y = sigmoid(o);
			
			float d = y-t;
			loss += 0.5f*d*d;
			
			da1 += d*dsigmoid(o)*x1;
			da2 += d*dsigmoid(o)*x2;
			db += d*dsigmoid(o);
			
		}
		
		a1 -= alpha*da1/4.f;
		a2 -= alpha*da2/4.f;
		b -= alpha*db/4.f;
		
	}
	
	for(int j=0; j<4; ++j) {
		float x1 = data[3*j], x2 = data[3*j+1];
		std::cout << x1 << "^" << x2 << " = " << sigmoid(a1*x1+a2*x2+b) << std::endl;
	}
	
	std::cout << "Final a1: " << a1 << std::endl;
	std::cout << "Final a2: " << a2 << std::endl;
	std::cout << "Final b: " << b << std::endl;
	system("PAUSE");
	return 0;
}

