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
int num_hidden_layers;
std::vector<int> num_nodes; // size() = num_hidden_layers

@includes+=
#include <iostream>

@retrieve_net_parameters+=
std::cout << "Num layers: ";
std::cin >> num_hidden_layers;
for(int i=0; i<num_hidden_layers; ++i) {
	@ask_for_num_node_for_layer
}

@ask_for_num_node_for_layer+=
int num_node;
if(i == 0) { std::cout << "Num inputs"; }
else if(i == num_hidden_layers-1) { std::cout << "Num outputs"; }
else { std::cout << "Num hidden"; }
std::cout << " (layer = " << i << "): ";
std::cin >> num_node;
num_nodes.push_back(num_node);

@gen_functions+=
@gen_includes
h("");
@gen_constants
h("");
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
h("void forward(const float* params, const float* in, float* out)");

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
h("static float y[", max_node, "];");

int node_index = 0;
int param_index = 0;
for(size_t i=1; i<num_nodes.size(); ++i) {
	@decide_which_is_in_which_is_out
	@gen_forward_single_layer_compute_loop
	@update_indices
}

@includes+=
#include <string>

@decide_which_is_in_which_is_out+=
std::string in = std::string("y[") + std::to_string(node_index);
std::string out = std::string("y[") + std::to_string(node_index + num_nodes[i]);

if(i == 1) {
	in = "in[0";
}

if(i == num_nodes.size()-1) {
	out = "out[0";
}

@gen_forward_single_layer_compute_loop+=
h("");
h("// layer ", i-1, " -> ", i);
h("for(int i=0; i<", num_nodes[i], ";++i) {");
	@gen_forward_single_node
	@gen_apply_activation_function
h("}");

@gen_forward_single_node+=
h(out, "+i] = params[", param_index, "+", (num_nodes[i-1]+1), "*i];");
h("for(int j=0; j<", num_nodes[i-1], ";++j) {");
	h(out, "+i] += params[", param_index, "+", num_nodes[i-1]+1, "*i+j+1]*", in, "+j];");
h("}");

@gen_apply_activation_function+=
h(out, "+i] = sigmoid(", out, "+i]);");

@gen_includes+=
h("#include <cmath>");

@gen_utility_functions+=
h("float sigmoid(float x)");
h("{");
	h("return 1.f/(1.f + std::exp(x));");
h("}");

@update_indices+=
param_index += (num_nodes[i-1]+1)*num_nodes[i];

@gen_init_parameters+=
@gen_init_signature
@open_parenthesis
@gen_init_body
@close_parenthesis

@gen_init_signature+=
h("void init_params(float* params)");

@gen_includes+=
h("#include <ctime>");
h("#include <cstdlib>");

@gen_init_body+=
h("std::srand(std::time(nullptr));");
h("for(int i=0; i<", nnodes*3, "; ++i) {");
	h("params[i] = 2.f*((float)std::rand()/(float)RAND_MAX)-1.f;");
h("}");

@gen_backward+=
@gen_backward_signature
@open_parenthesis
@gen_backward_body
@close_parenthesis

@gen_backward_signature+=
h("float backward(const float* params, float* dparams, const float* in, const float* exp)");

@gen_backward_body+=
@gen_backward_forward
@gen_backward_backward
@return_loss

@gen_backward_forward+=
h("static float o[", nnodes, "];");
h("static float y[", nnodes+num_nodes[0], "];");

int node_index = 0;
int param_index = 0;
@fill_input_in_y
for(size_t i=1; i<num_nodes.size(); ++i) {
	@gen_forward_single_layer_compute_loop_for_backward
	@update_node_index
}

@update_node_index+=
node_index += num_nodes[i];
param_index += num_nodes[i]*num_nodes[i-1];

@fill_input_in_y+=
h("for(int i=0; i<", num_nodes[0], "; ++i) {");
	h("y[i] = in[i];");
h("}");

@gen_forward_single_layer_compute_loop_for_backward+=
h("");
h("// layer ", i-1, " -> ", i);
h("for(int i=0; i<", num_nodes[i], ";++i) {");
@gen_forward_single_node_backward
	h("y[", node_index+num_nodes[0], "+i] = sigmoid(o[", node_index, "+i]);");
h("}");


@gen_forward_single_node_backward+=
h("o[", node_index, "+i] = params[", param_index, "+i*", num_nodes[i-1]+1, "];");
h("for(int j=0; j<", num_nodes[i-1], "; ++j) {");
	h("o[", node_index, "+i] += params[", param_index, "+i*", num_nodes[i-1]+1, "+j+1] * y[", node_index + num_nodes[0] - num_nodes[i-1], "+j];");
h("}");


@gen_utility_functions+=
h("float dsigmoid(float x)");
h("{");
	h("float z = 1.f + std::exp(-x);");
	h("return 1.f/(z*z);");
h("}");

@gen_backward_backward+=
int back_index = 0;
int rnode_index = nnodes - num_nodes.back();
int rparam_index = nparams - num_nodes.back() * (num_nodes[num_nodes.size()-2]+1);
h("static float back[", nnodes, "];");
@compute_loss
h("// layer ", num_nodes.size()-1);
@compute_last_layer_dparams
int rparam_index_prev;
for(size_t i=num_nodes.size()-2; i>0; --i) {
	@update_indices_backward
	h("// layer ", i);
	@gen_backward_computation_loop
}

@update_indices_backward+=
rnode_index -= num_nodes[i];
rparam_index_prev = rparam_index;
rparam_index -= num_nodes[i] * (num_nodes[i-1]+1);

@compute_loss+=
h("");
h("float loss = 0.f;");
h("for(int i=0; i<", num_nodes.back(), ";++i) {");
	h("back[", rnode_index, "+i] = out[i] - exp[i];");
	h("loss += 0.5f*back[", rnode_index, "+i]*back[", rnode_index, "+i];");
h("}");
h("");

@return_loss+=
h("return loss;");

@compute_last_layer_dparams+=
h("for(int i=0; i<", num_nodes.back(), "; ++i) {");
	h("back[", rnode_index, "+i] *= dsigmoid(o[", rnode_index, "]);");
	int prev_num_nodes = num_nodes[num_nodes.size()-2];
	h("dparams[", rparam_index, "+i*", (prev_num_nodes+1), "+0] += back[", rnode_index, "+i];");
	h("for(int j=0; j<", prev_num_nodes, "; ++j) {");
		h("dparams[", rparam_index, "+i*", (prev_num_nodes+1), "+j+1] += back[", rnode_index, "+i]*y[", rnode_index, "+j];");
	h("}");
h("}");

@gen_backward_computation_loop+=
h("for(int i=0; i<", num_nodes[i], "; ++i) {");
	h("back[", rnode_index, "+i] = 0.f;");
	h("for(int j=0; j<", num_nodes[i+1], "; ++j) {");
		h("back[", rnode_index, "+i] += back[", rnode_index+num_nodes[i], "+j]*params[", rparam_index_prev, "+j*", (num_nodes[i]+1), "+i+1];");
	h("}");
	h("back[", rnode_index, "+i] *= dsigmoid(o[", rnode_index, "+i]);");
	h("dparams[", rparam_index, "+i*", (num_nodes[i-1]+1), "+0] += back[", rnode_index, "+i];");
	h("for(int j=0; j<", prev_num_nodes, "; ++j) {");
		h("dparams[", rparam_index, "+i*", (num_nodes[i-1]+1), "+j+1] += back[", rnode_index, "+i]*y[", rnode_index, "+j];");
	h("}");
h("}");

@gen_train+=
@gen_train_signature
@open_parenthesis
@gen_train_body
@close_parenthesis

@gen_train_signature+=
h("void train(const float* in, const float* out, int size, float* params, int nepochs, int batchsize, float alpha)");

@gen_train_body+=
@init_index_array
h("for(int i=0; i<nepochs; ++i) {");
	@shuffle_index_array
	@init_epoch_loss
	@foreach_batch_compute_gradient_and_apply
	@do_something_with_loss
h("}");

@init_index_array+=
h("int* indices = (int*)malloc(size*sizeof(int));");
h("std::srand(std::time(nullptr));");

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
h("float* gradient = (float*)malloc(NPARAMS*sizeof(float))");

@init_gradient+=
h("for(int k=0; i<NPARAMS; ++k) {");
	h("gradient[i] = 0.f;");
h("}");

@init_epoch_loss+=
h("float loss = 0.f");

@do_something_with_loss+=
h("(void) loss;");

@compute_batch_gradient+=
h("int last = j+batchsize > size ? size : j+batchsize;");
h("for(int k=j; k<last; ++k) {");
	h("loss += backward(params, gradient, in[indices[k]], out[indices[k]]);");
h("}");

@apply_gradient+=
h("for(int k=0; k<NPARAMS; ++k) {");
	h("params[k] -= alpha * gradient[i] / (float)batchsize");
h("}");
