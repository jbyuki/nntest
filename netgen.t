@*=
@includes

@global_variables
@functions
auto main() -> int
{
	@retrieve_net_parameters
	@compute_parameters
	@gen_functions
	system("PAUSE");
	return 0;
}

@includes+=
#include <vector>

@global_variables+=
int num_layers;
std::vector<int> num_nodes; // size() = num_layers

@includes+=
#include <iostream>

@retrieve_net_parameters+=
std::cout << "Num layers: ";
std::cin >> num_layers;
for(int i=0; i<num_layers; ++i) {
	@ask_for_num_node_for_layer
}

@ask_for_num_node_for_layer+=
int num_node;
if(i == 0) { std::cout << "Num inputs"; }
else if(i == num_layers-1) { std::cout << "Num outputs"; }
else { std::cout << "Num hidden"; }
std::cout << " (layer = " << i << "): ";
std::cin >> num_node;
num_nodes.push_back(num_node);

@gen_functions+=
@gen_includes
h("");
@gen_constants
h("");
@determine_which_activation_function_to_gen
@gen_utility_functions
h("");
@gen_init_parameters
h("");
{
@gen_forward
}
h("");
{
@gen_backward
}
h("");
{
@gen_train
}

@gen_forward+=
@gen_forward_signature
@open_parenthesis
@gen_forward_body
@close_parenthesis

@compute_parameters+=
int nnodes = 0;
for(size_t i=1; i<num_nodes.size(); ++i) {
	nnodes += num_nodes[i];
}

@compute_parameters+=
int nparams = 0;
for(size_t i=1; i<num_nodes.size(); ++i) {
	nparams += (num_nodes[i-1]+1)*num_nodes[i];
}

@includes+=
#include <sstream>

@functions+=
auto h_helper(std::ostream&) -> void
{
}

template<typename T, typename... R>
auto h_helper(std::ostream& out, T t, R... r) -> void
{
	out << t;
	h_helper(out, r...);
}

template<typename... R>
auto h_helper(std::ostream& out, const char* t, R... r) -> void
{
	@update_tabs
	out << t;
	h_helper(out, r...);
}

@functions+=
template<typename... R>
auto h(R... r) -> void
{
	@save_num_tabs
	std::ostringstream out;
	h_helper(out, r...);
	@write_tabs
	@write_rest
}

@write_rest+=
std::cout << out.str() << std::endl;

@global_variables+=
int num_tabs = 0;

@save_num_tabs+=
int before_num_tabs = num_tabs;

@update_tabs+=
const char* p = t;
while(*p) {
	if(*p == '{') {
		num_tabs++;
	} else if(*p == '}') {
		num_tabs--;
	}
	p++;
}

@write_tabs+=
if(num_tabs < before_num_tabs) {
	before_num_tabs = num_tabs;
}

for(int i=0; i<before_num_tabs; ++i) {
	std::cout << "\t";
}


@gen_constants+=
h("const int NPARAMS = ", nparams, ";");
h("const int NIN = ", num_nodes[0], ";");
h("const int NOUT = ", num_nodes.back(), ";");

@gen_forward_signature+=
h("void forward(const double* params, const double* in, double* out)");

@open_parenthesis+=
h("{");

@close_parenthesis+=
h("}");

@includes+=
#include <algorithm>

@compute_parameters+=
int max_node = 0;
for(size_t i=1; i<num_nodes.size(); ++i) {
	max_node = std::max(max_node, num_nodes[i]);
}

@gen_forward_body+=
h("static double y[", nnodes, "];");

int node_index = 0;
int param_index = 0;
for(size_t i=1; i<num_nodes.size(); ++i) {
	@decide_which_is_in_which_is_out
	h("");
	h("// layer ", i-1, " -> ", i);
	@gen_forward_single_layer_compute_loop
	@update_indices
}

@update_indices+=
param_index += (num_nodes[i-1]+1)*num_nodes[i];
node_index += num_nodes[i];

@includes+=
#include <string>

@decide_which_is_in_which_is_out+=
std::string in = std::string("y[") + std::to_string(node_index - num_nodes[i-1]);
std::string out = std::string("y[") + std::to_string(node_index);

if(i == 1) {
	in = "in[0";
}

if(i == num_nodes.size()-1) {
	out = "out[0";
}

@gen_forward_single_layer_compute_loop+=
if(mode == PLAIN) {
	h("for(int i=0; i<", num_nodes[i], ";++i) {");
		@gen_forward_single_node
		@gen_apply_activation_function
	h("}");
}

@gen_forward_single_node+=
h(out, "+i] = 0.f;");
h("for(int j=0; j<", num_nodes[i-1], ";++j) {");
	h(out, "+i] += params[", param_index, "+", num_nodes[i-1], "*i+j]*", in, "+j];");
h("}");
h(out, "+i] += params[", param_index+num_nodes[i-1]*num_nodes[i], "+i];");

@gen_apply_activation_function+=
h(out, "+i] = ", activations[i-1], "(", out, "+i]);");

@gen_includes+=
h("#include <cmath>");



@gen_init_parameters+=
@gen_init_signature
@open_parenthesis
@gen_init_body
@close_parenthesis

@gen_init_signature+=
h("void init_params(double* params)");

@gen_includes+=
h("#include <ctime>");
h("#include <cstdlib>");

@gen_init_body+=
h("std::srand((unsigned)std::time(nullptr));");
h("for(int i=0; i<NPARAMS; ++i) {");
	h("params[i] = 2.*((double)std::rand()/(double)RAND_MAX)-1.;");
h("}");

@gen_backward+=
@gen_backward_signature
@open_parenthesis
@gen_backward_body
@close_parenthesis

@gen_backward_signature+=
h("double backward(const double* params, double* dparams, const double* in, const double* exp)");

@gen_backward_body+=
@gen_backward_forward
@gen_backward_backward
@return_loss

@gen_backward_forward+=
h("static double o[", nnodes, "];");
h("static double y[", nnodes, "];");

int node_index = 0;
int param_index = 0;
for(size_t i=1; i<num_nodes.size(); ++i) {
	h("");
	h("// layer ", i-1, " -> ", i);
	@gen_forward_single_layer_compute_loop_for_backward
	@update_indices
}

@gen_forward_single_layer_compute_loop_for_backward+=
if(mode == PLAIN) {
	h("for(int i=0; i<", num_nodes[i], ";++i) {");
		@gen_forward_single_node_backward
		h("y[", node_index, "+i] = ", activations[i-1], "(o[", node_index, "+i]);");
	h("}");
}


@gen_forward_single_node_backward+=
h("o[", node_index, "+i] = 0.f;");
h("for(int j=0; j<", num_nodes[i-1], "; ++j) {");
	if(i == 1) {
	h("o[", node_index, "+i] += params[", param_index, "+i*", num_nodes[i-1], "+j] * in[j];");
	} else {
	h("o[", node_index, "+i] += params[", param_index, "+i*", num_nodes[i-1], "+j] * y[", node_index - num_nodes[i-1], "+j];");
	}
h("}");
h("o[", node_index, "+i] += params[", param_index+num_nodes[i-1]*num_nodes[i], "+i];");



@gen_backward_backward+=
int back_index = 0;
int rnode_index = nnodes - num_nodes.back();
int rparam_index = nparams - num_nodes.back() * (num_nodes[num_nodes.size()-2]+1);
h("static double back[", nnodes, "];");
@compute_loss
h("// layer ", num_nodes.size()-1);
@compute_last_layer_dparams
int rparam_index_prev;
for(size_t i=num_nodes.size()-2; i>0; --i) {
	@update_indices_backward
	h("");
	h("// layer ", i);
	@gen_backward_computation_loop
}

@update_indices_backward+=
rnode_index -= num_nodes[i];
rparam_index_prev = rparam_index;
rparam_index -= num_nodes[i] * (num_nodes[i-1]+1);

@compute_loss+=
h("");
h("double loss = 0.;");
h("for(int i=0; i<", num_nodes.back(), ";++i) {");
	h("back[", rnode_index, "+i] = y[", rnode_index, "+i]- exp[i];");
	h("loss += 0.5*back[", rnode_index, "+i]*back[", rnode_index, "+i];");
h("}");
h("");

@return_loss+=
h("return loss;");

@compute_last_layer_dparams+=
if(mode == PLAIN) {
	h("for(int i=0; i<", num_nodes.back(), "; ++i) {");
		h("back[", rnode_index, "+i] *= d", activations.back(), "(o[", rnode_index, "+i]);");
		int prev_num_nodes = num_nodes[num_nodes.size()-2];
		h("dparams[", rparam_index+prev_num_nodes*num_nodes.back(), "+i] += back[", rnode_index, "+i];");
		h("for(int j=0; j<", prev_num_nodes, "; ++j) {");
			if(num_nodes.size() > 2) {
			h("dparams[", rparam_index, "+i*", prev_num_nodes, "+j] += back[", rnode_index, "+i]*y[", rnode_index-prev_num_nodes, "+j];");
			} else {
			h("dparams[", rparam_index, "+i*", prev_num_nodes, "+j] += back[", rnode_index, "+i]*in[j];");
			}
		h("}");
	h("}");
}

@gen_backward_computation_loop+=
if(mode == PLAIN) {
	h("for(int i=0; i<", num_nodes[i], "; ++i) {");
		h("back[", rnode_index, "+i] = 0.;");
		h("for(int j=0; j<", num_nodes[i+1], "; ++j) {");
			h("back[", rnode_index, "+i] += back[", rnode_index+num_nodes[i], "+j]*params[", rparam_index_prev, "+j*", num_nodes[i], "+i];");
		h("}");
		h("back[", rnode_index, "+i] *= d", activations[i-1], "(o[", rnode_index, "+i]);");
		h("dparams[", rparam_index+num_nodes[i-1]*num_nodes[i], "+i] += back[", rnode_index, "+i];");
		h("for(int j=0; j<", num_nodes[i-1], "; ++j) {");
			if(i > 1) {
			h("dparams[", rparam_index, "+i*", num_nodes[i-1], "+j] += back[", rnode_index, "+i]*y[", rnode_index-num_nodes[i-1], "+j];");
			} else {
			h("dparams[", rparam_index, "+i*", num_nodes[i-1], "+j] += back[", rnode_index, "+i]*in[j];");
			}
		h("}");
	h("}");
}

@gen_train+=
@gen_train_signature
@open_parenthesis
@gen_train_body
@close_parenthesis

@gen_train_signature+=
if(optimizer == "sgd") {
	h("void sgd(const double* in, const double* out, int size, double* params, int nepochs, int batchsize, double alpha)");
}

@gen_train_body+=
if(optimizer == "sgd") {
	@init_index_array
	h("for(int i=0; i<nepochs; ++i) {");
		@shuffle_index_array
		@init_epoch_loss
		@foreach_batch_compute_gradient_and_apply
		@do_something_with_loss
	h("}");
	@deinit_index_array
}

@init_index_array+=
h("int* indices = (int*)malloc(size*sizeof(int));");
h("std::srand((unsigned)std::time(nullptr));");
h("for(int i=0; i<size; ++i) {");
	h("indices[i] = i;");
h("}");

@deinit_index_array+=
h("free(indices);");

@shuffle_index_array+=
h("for(int i=0; i<size; ++i) {");
	h("int a = rand()%size;");
	h("int b = rand()%size;");
	h("if(a == b) {");
		h("continue;");
	h("}");
	h("int tmp = indices[a];");
	h("indices[a] = indices[b];");
	h("indices[b] = tmp;");
h("}");

@foreach_batch_compute_gradient_and_apply+=
h("for(int j=0; j<size; j += batchsize) {");
	@init_gradient
	@compute_batch_gradient
	@apply_gradient
h("}");

@init_index_array+=
h("double* gradient = (double*)malloc(NPARAMS*sizeof(double));");

@deinit_index_array+=
h("free(gradient);");

@init_gradient+=
h("for(int k=0; k<NPARAMS; ++k) {");
	h("gradient[k] = 0.;");
h("}");

@init_epoch_loss+=
h("double loss = 0.;");

@do_something_with_loss+=
h("(void) loss;");

@compute_batch_gradient+=
h("int last = j+batchsize > size ? size : j+batchsize;");
h("for(int k=j; k<last; ++k) {");
	h("loss += backward(params, gradient, &in[indices[k]*", num_nodes[0], "], &out[indices[k]*", num_nodes.back(),"]);");
h("}");

@apply_gradient+=
if(mode == PLAIN) {
	h("for(int k=0; k<NPARAMS; ++k) {");
		h("params[k] -= alpha * gradient[k] / (double)batchsize;");
	h("}");
}

@retrieve_net_parameters+=
std::vector<std::string> activations;
for(int i=1; i<num_layers; ++i) {
	std::cout << "Activation function ";
	if(i == num_layers-1) {
		std::cout << "(last layer): ";
	} else {
		std::cout << "(layer = " << i << "): ";
	}

	std::string activation;
	std::cin >> activation;
	activations.push_back(activation);
}

@global_variables+=
bool has_sigmoid = false;

@determine_which_activation_function_to_gen+=
for(auto& a : activations) {
	@check_activation_function_existence
}

@check_activation_function_existence+=
if(a == "sigmoid") {
	has_sigmoid = true;
}

@gen_utility_functions+=
if(has_sigmoid) {
	h("double sigmoid(double x)");
	h("{");
		h("return 1./(1. + std::exp(-x));");
	h("}");
	h("");
	h("double dsigmoid(double x)");
	h("{");
		h("double z = sigmoid(x);");
		h("return z*(1.0-z);");
	h("}");
}

@global_variables+=
bool has_relu = false;

@check_activation_function_existence+=
if(a == "relu") {
	has_relu = true;
}


@gen_utility_functions+=
if(has_relu) {
	h("double relu(double x)");
	h("{");
		h("return x > 0.f ? x : 0.f;");
	h("}");
	h("");
	h("double drelu(double x)");
	h("{");
		h("return x > 0.f ? 1.f : 0.f;");
	h("}");
}

@global_variables+=
enum OUTPUT_MODE
{
	PLAIN,
	MKL,
} mode;

@retrieve_net_parameters+=
std::string use_mkl;
std::cout << "Use MKL (y/n)? ";
std::cin >> use_mkl;

mode = (use_mkl == "y" || use_mkl == "yes") ? MKL : PLAIN;

@gen_includes+=
if(mode == MKL) {
	h("#include <mkl.h>");
}

@gen_forward_single_layer_compute_loop_for_backward+=
if(mode == MKL) {
	if(i == 1) {
	h("cblas_dgemv(CblasRowMajor, CblasNoTrans,", num_nodes[i], ", ", num_nodes[i-1], ", 1.0, &params[", param_index, "],", num_nodes[i-1], ", &in[", node_index, "], 1, 0.0, &o[", node_index ,"], 1);");
	} else {
	h("cblas_dgemv(CblasRowMajor, CblasNoTrans,", num_nodes[i], ", ", num_nodes[i-1], ", 1.0, &params[", param_index, "],", num_nodes[i-1], ", &y[", node_index-num_nodes[i-1], "], 1, 0.0, &o[", node_index ,"], 1);");
	}
	h("cblas_daxpy(", num_nodes[i], ", 1.0, &params[", param_index+num_nodes[i-1]*num_nodes[i], "], 1, &o[", node_index, "], 1);");
	h("for(int i=0; i<", num_nodes[i], ";++i) {");
		h("y[", node_index, "+i] = ", activations[i-1], "(o[", node_index, "+i]);");
	h("}");
}

@gen_forward_single_layer_compute_loop+=
if(mode == MKL) {
	h("cblas_dgemv(CblasRowMajor, CblasNoTrans,", num_nodes[i], ", ", num_nodes[i-1], ", 1.0, &params[", param_index, "],", num_nodes[i-1], ", &", in, "], 1, 0.0, &", out, "], 1);");
	h("cblas_daxpy(", num_nodes[i], ", 1.0, &params[", param_index+num_nodes[i-1]*num_nodes[i], "], 1, &", out, "], 1);");
	h("for(int i=0; i<", num_nodes[i], ";++i) {");
		h(out, "+i] = ", activations[i-1], "(", out, "+i]);");
	h("}");
}

@compute_last_layer_dparams+=
if(mode == MKL) {
	int prev_num_nodes = num_nodes[num_nodes.size()-2];
	h("for(int i=0; i<", num_nodes.back(), "; ++i) {");
		h("back[", rnode_index, "+i] *= d", activations.back(), "(o[", rnode_index, "+i]);");
	h("}");

	h("cblas_daxpy(", num_nodes.back(), ", 1.0, &back[", rnode_index, "], 1, &dparams[", rparam_index+prev_num_nodes*num_nodes.back(), "], 1);");

	if(num_nodes.size() > 2) {
	h("cblas_dger(CblasRowMajor, ", num_nodes.back(), ",", prev_num_nodes, ", 1.0, &back[", rnode_index, "], 1, &y[", rnode_index-prev_num_nodes, "], 1, &dparams[", rparam_index, "], ", prev_num_nodes, ");");
	} else {
	h("cblas_dger(CblasRowMajor, ", num_nodes.back(), ",", prev_num_nodes, ", 1.0, &back[", rnode_index, "], 1, &in[0], 1, &dparams[", rparam_index, "], ", prev_num_nodes, ");");
	}
}

@gen_backward_computation_loop+=
if(mode == MKL) {
	h("cblas_dgemv(CblasRowMajor, CblasTrans, ", num_nodes[i+1], ",", num_nodes[i], ", 1.0, &params[", rparam_index_prev, "], ", num_nodes[i], ", &back[", rnode_index+num_nodes[i], "], 1, 0.0, &back[", rnode_index, "], 1);");

	h("for(int i=0; i<", num_nodes[i], "; ++i) {");
		h("back[", rnode_index, "+i] *= d", activations[i-1], "(o[", rnode_index, "+i]);");
	h("}");

	h("cblas_daxpy(", num_nodes[i], ", 1.0, &back[", rnode_index, "], 1, &dparams[", rparam_index+num_nodes[i-1]*num_nodes[i], "], 1);");

	if(i > 1) {
	h("cblas_dger(CblasRowMajor, ", num_nodes[i], ",", num_nodes[i-1], ", 1.0, &back[", rnode_index-num_nodes[i-1], "], 1, &y[", rnode_index, "], 1, &dparams[", rparam_index, "], ", num_nodes[i-1], ");");
	} else {
	h("cblas_dger(CblasRowMajor, ", num_nodes[i], ",", num_nodes[i-1], ", 1.0, &back[0], 1, &in[", rnode_index, "], 1, &dparams[", rparam_index, "], ", num_nodes[i-1], ");");
	}
}

@apply_gradient+=
if(mode == MKL) {
	h("cblas_daxpy(NPARAMS, -alpha/(double)batchsize, &gradient[0], 1, &params[0], 1);");
}

@global_variables+=
std::string optimizer;

@retrieve_net_parameters+=
std::cout << "Optimizer: ";
std::cin >> optimizer;

@gen_train_body+=
if(optimizer == "adam") {
	@init_index_array
	@init_timestep
	@init_moment_vectors
	h("for(int i=0; i<nepochs; ++i) {");
		@shuffle_index_array
		@init_epoch_loss
		@foreach_batch_compute_gradient_and_apply_adam
		@do_something_with_loss
	h("}");
	@deinit_moment_vectors
	@deinit_index_array
}

@init_timestep+=
h("double t = 0.0;");

@init_moment_vectors+=
h("double* m = (double*)malloc(NPARAMS*sizeof(double));");
h("double* v = (double*)malloc(NPARAMS*sizeof(double));");

h("for(int j=0; j<NPARAMS; j++) {");
	h("m[j] = 0.0;");
	h("v[j] = 0.0;");
h("}");

@deinit_moment_vectors+=
h("free(v);");
h("free(m);");

@foreach_batch_compute_gradient_and_apply_adam+=
h("for(int j=0; j<size; j += batchsize) {");
	@init_gradient
	@compute_batch_gradient
	@apply_gradient_adam
	@update_factors_adam
h("}");



@gen_train_signature+=
if(optimizer == "adam") {
	h("void adam(const double* in, const double* out, int size, double* params, int nepochs, int batchsize, double alpha = 0.001, double beta1 = 0.9, double beta2 = 0.999)");
}

@init_index_array+=
h("double beta1t = beta1;");
h("double beta2t = beta2;");

@update_factors_adam+=
h("beta1t *= beta1;");
h("beta2t *= beta2;");

@apply_gradient_adam+=
h("double alphat = alpha * std::sqrt(1.0 - beta2t)/(1.0 - beta1t);");

if(mode == PLAIN) {
	h("for(int i=0; i<NPARAMS; ++i) {");
		h("gradient[i] /= (double)batchsize;");
		h("m[i] = beta1*m[i] + (1-beta1)*gradient[i];");
		h("v[i] = beta2*v[i] + (1-beta2)*gradient[i]*gradient[i];");
		h("params[i] -= alphat*m[i]/(std::sqrt(v[i] + epsilon));");
	h("}");
}

@gen_includes+=
h("#include <cfloat>");

@apply_gradient_adam+=
if(mode == MKL) {
	h("cblas_dscal(NPARAMS, 1.0/(double)batchsize, gradient, 1);");
	h("cblas_dscal(NPARAMS, beta1, m, 1);");
	h("cblas_daxpy(NPARAMS, 1.0-beta1, gradient, 1, m, 1);");
	h("cblas_dscal(NPARAMS, beta2, v, 1);");
	h("vdSqr(NPARAMS, gradient, gradient);");
	h("cblas_daxpy(NPARAMS, 1.0-beta2, gradient, 1, v, 1);");
	h("// use gradient as temporary storage because it's not needed anymore");
	h("vdSqrt(NPARAMS, v, gradient);");
	h("vdLinearFrac(NPARAMS, m, gradient, -alphat, 0.0, 1.0, DBL_EPSILON, gradient);");
	h("vdAdd(NPARAMS, gradient, params, params);");
}
