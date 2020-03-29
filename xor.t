@*=
@includes

@structs
@functions
@global_variables

auto main() -> int
{
	@make_net
	@train_net
	@test_net
	system("PAUSE");
	return 0;
}

@global_variables+=
float a1, a2, b;

@includes+=
#include <random>

@global_variables+=
std::random_device rd;
std::mt19937 gen(rd());
std::uniform_real_distribution<float> dis(-1.f, 1.f);

@includes+=
#include <iostream>

@make_net+=
a1 = dis(gen);
a2 = dis(gen);
b = dis(gen);

std::cout << "Initial a1: " << a1 << std::endl;
std::cout << "Initial a2: " << a2 << std::endl;
std::cout << "Initial b: " << b << std::endl;

@global_variables+=
std::vector<float> data {
	0.f, /* ^ */ 0.f, /* = */ 0.f,
	0.f, /* ^ */ 1.f, /* = */ 1.f,
	1.f, /* ^ */ 0.f, /* = */ 1.f,
	1.f, /* ^ */ 1.f, /* = */ 0.f,
};

int nepochs = 100000;

@train_net+=
for(int i=0; i<nepochs; ++i) {
	float loss = 0.f;
	@train_batch
	@apply_gradient
}

@includes+=
#include <cmath>

@functions+=
auto sigmoid(float x) -> float
{
	return 1.f/(1.f + std::exp(-x));
}

@train_batch+=
float da1 = 0.f, da2 = 0.f, db = 0.f;
for(int j=0; j<4; ++j) {
	@compute_result
	@compute_loss
	@compute_gradient
}

@compute_result+=
float x1 = data[3*j], x2 = data[3*j+1], t = data[3*j+2];
float o = a1*x1+a2*x2+b;
float y = sigmoid(o);

@compute_loss+=
float d = y-t;
loss += 0.5f*d*d;

@print_loss+=
std::cout << "loss : " << loss << std::endl;

@functions+=
auto dsigmoid(float x) -> float
{
	float z = 1.f + std::exp(-x);
	return 1.f/(z*z);
}

@compute_gradient+=
da1 += d*dsigmoid(o)*x1;
da2 += d*dsigmoid(o)*x2;
db += d*dsigmoid(o);

@global_variables+=
float alpha = 0.01f;

@apply_gradient+=
a1 -= alpha*da1/4.f;
a2 -= alpha*da2/4.f;
b -= alpha*db/4.f;

@test_net+=
for(int j=0; j<4; ++j) {
	float x1 = data[3*j], x2 = data[3*j+1];
	std::cout << x1 << "^" << x2 << " = " << sigmoid(a1*x1+a2*x2+b) << std::endl;
}

@test_net+=
std::cout << "Final a1: " << a1 << std::endl;
std::cout << "Final a2: " << a2 << std::endl;
std::cout << "Final b: " << b << std::endl;
