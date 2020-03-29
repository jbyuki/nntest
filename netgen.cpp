#include <vector>

#include <iostream>

#include <sstream>

#include <algorithm>

#include <string>


int num_hidden_layers;
std::vector<int> num_nodes; // size() = num_hidden_layers

int num_tabs = 0;

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
	const char* p = t;
	while(*p) {
		if(*p == '{') {
			num_tabs++;
		} else if(*p == '}') {
			num_tabs--;
		}
		p++;
	}
	
	out << t;
	h_helper(out, r...);
}

template<typename... R>
auto h(R... r) -> void
{
	int before_num_tabs = num_tabs;
	
	std::ostringstream out;
	h_helper(out, r...);
	if(num_tabs < before_num_tabs) {
		before_num_tabs = num_tabs;
	}
	
	for(int i=0; i<before_num_tabs; ++i) {
		std::cout << "\t";
	}
	
	
	std::cout << out.str() << std::endl;
	
}

auto main() -> int
{
	std::cout << "Num layers: ";
	std::cin >> num_hidden_layers;
	for(int i=0; i<num_hidden_layers; ++i) {
		int num_node;
		if(i == 0) { std::cout << "Num inputs"; }
		else if(i == num_hidden_layers-1) { std::cout << "Num outputs"; }
		else { std::cout << "Num hidden"; }
		std::cout << " (layer = " << i << "): ";
		std::cin >> num_node;
		num_nodes.push_back(num_node);
		
	}
	
	int nnodes = 0;
	for(size_t i=1; i<num_nodes.size(); ++i) {
		nnodes += num_nodes[i];
	}
	
	int nparams = 0;
	for(size_t i=1; i<num_nodes.size(); ++i) {
		nparams += (num_nodes[i-1]+1)*num_nodes[i];
	}
	
	int max_node = 0;
	for(size_t i=1; i<num_nodes.size(); ++i) {
		max_node = std::max(max_node, num_nodes[i]);
	}
	
	h("#include <cmath>");
	
	h("#include <ctime>");
	h("#include <cstdlib>");
	
	h("");
	h("const int NPARAMS = ", nparams, ";");
	h("const int NIN = ", num_nodes[0], ";");
	h("const int NOUT = ", num_nodes.back(), ";");
	
	h("");
	h("double sigmoid(double x)");
	h("{");
		h("return 1./(1. + std::exp(-x));");
	h("}");
	
	
	h("double dsigmoid(double x)");
	h("{");
		h("double z = sigmoid(x);");
		h("return z*(1.0-z);");
	h("}");
	
	h("");
	h("void init_params(double* params)");
	
	h("{");
	
	h("std::srand((unsigned)std::time(nullptr));");
	h("for(int i=0; i<NPARAMS; ++i) {");
		h("params[i] = 2.*((double)std::rand()/(double)RAND_MAX)-1.;");
	h("}");
	
	h("}");
	
	
	h("");
	{
	h("void forward(const double* params, const double* in, double* out)");
	
	h("{");
	
	h("static double y[", nnodes, "];");
	
	int node_index = 0;
	int param_index = 0;
	for(size_t i=1; i<num_nodes.size(); ++i) {
		std::string in = std::string("y[") + std::to_string(node_index - num_nodes[i-1]);
		std::string out = std::string("y[") + std::to_string(node_index);
		
		if(i == 1) {
			in = "in[0";
		}
		
		if(i == num_nodes.size()-1) {
			out = "out[0";
		}
		
		h("");
		h("// layer ", i-1, " -> ", i);
		h("for(int i=0; i<", num_nodes[i], ";++i) {");
			h(out, "+i] = params[", param_index, "+", (num_nodes[i-1]+1), "*i];");
			h("for(int j=0; j<", num_nodes[i-1], ";++j) {");
				h(out, "+i] += params[", param_index, "+", num_nodes[i-1]+1, "*i+j+1]*", in, "+j];");
			h("}");
			
			h(out, "+i] = sigmoid(", out, "+i]);");
			
		h("}");
		
		param_index += (num_nodes[i-1]+1)*num_nodes[i];
		node_index += num_nodes[i];
		
	}
	
	h("}");
	
	
	}
	h("");
	{
	h("double backward(const double* params, double* dparams, const double* in, const double* exp)");
	
	h("{");
	
	h("static double o[", nnodes, "];");
	h("static double y[", nnodes+num_nodes[0], "];");
	
	int node_index = 0;
	int param_index = 0;
	h("for(int i=0; i<", num_nodes[0], "; ++i) {");
		h("y[i] = in[i];");
	h("}");
	
	for(size_t i=1; i<num_nodes.size(); ++i) {
		h("");
		h("// layer ", i-1, " -> ", i);
		h("for(int i=0; i<", num_nodes[i], ";++i) {");
		h("o[", node_index, "+i] = params[", param_index, "+i*", num_nodes[i-1]+1, "];");
		h("for(int j=0; j<", num_nodes[i-1], "; ++j) {");
			h("o[", node_index, "+i] += params[", param_index, "+i*", num_nodes[i-1]+1, "+j+1] * y[", node_index + num_nodes[0] - num_nodes[i-1], "+j];");
		h("}");
		
		
			h("y[", node_index+num_nodes[0], "+i] = sigmoid(o[", node_index, "+i]);");
		h("}");
		
		
		param_index += (num_nodes[i-1]+1)*num_nodes[i];
		node_index += num_nodes[i];
		
	}
	
	int back_index = 0;
	int rnode_index = nnodes - num_nodes.back();
	int rparam_index = nparams - num_nodes.back() * (num_nodes[num_nodes.size()-2]+1);
	h("static double back[", nnodes, "];");
	h("");
	h("double loss = 0.;");
	h("for(int i=0; i<", num_nodes.back(), ";++i) {");
		h("back[", rnode_index, "+i] = y[", rnode_index + num_nodes[0], "+i]- exp[i];");
		h("loss += 0.5*back[", rnode_index, "+i]*back[", rnode_index, "+i];");
	h("}");
	h("");
	
	h("// layer ", num_nodes.size()-1);
	h("for(int i=0; i<", num_nodes.back(), "; ++i) {");
		h("back[", rnode_index, "+i] *= dsigmoid(o[", rnode_index, "+i]);");
		int prev_num_nodes = num_nodes[num_nodes.size()-2];
		h("dparams[", rparam_index, "+i*", (prev_num_nodes+1), "+0] += back[", rnode_index, "+i];");
		h("for(int j=0; j<", prev_num_nodes, "; ++j) {");
			h("dparams[", rparam_index, "+i*", (prev_num_nodes+1), "+j+1] += back[", rnode_index, "+i]*y[", rnode_index+num_nodes[0]-prev_num_nodes, "+j];");
		h("}");
	h("}");
	
	int rparam_index_prev;
	for(size_t i=num_nodes.size()-2; i>0; --i) {
		rnode_index -= num_nodes[i];
		rparam_index_prev = rparam_index;
		rparam_index -= num_nodes[i] * (num_nodes[i-1]+1);
		
		h("// layer ", i);
		h("for(int i=0; i<", num_nodes[i], "; ++i) {");
			h("back[", rnode_index, "+i] = 0.;");
			h("for(int j=0; j<", num_nodes[i+1], "; ++j) {");
				h("back[", rnode_index, "+i] += back[", rnode_index+num_nodes[i], "+j]*params[", rparam_index_prev, "+j*", (num_nodes[i]+1), "+i+1];");
			h("}");
			h("back[", rnode_index, "+i] *= dsigmoid(o[", rnode_index, "+i]);");
			h("dparams[", rparam_index, "+i*", (num_nodes[i-1]+1), "+0] += back[", rnode_index, "+i];");
			h("for(int j=0; j<", num_nodes[i-1], "; ++j) {");
				h("dparams[", rparam_index, "+i*", (num_nodes[i-1]+1), "+j+1] += back[", rnode_index, "+i]*y[", rnode_index+num_nodes[0]-num_nodes[i-1], "+j];");
			h("}");
		h("}");
		
	}
	
	h("return loss;");
	
	
	h("}");
	
	
	}
	h("");
	{
	h("void train(const double* in, const double* out, int size, double* params, int nepochs, int batchsize, double alpha)");
	
	h("{");
	
	h("int* indices = (int*)malloc(size*sizeof(int));");
	h("std::srand((unsigned)std::time(nullptr));");
	h("for(int i=0; i<size; ++i) {");
		h("indices[i] = i;");
	h("}");
	
	h("double* gradient = (double*)malloc(NPARAMS*sizeof(double));");
	
	h("for(int i=0; i<nepochs; ++i) {");
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
		
		h("double loss = 0.;");
		
		h("for(int j=0; j<size; j += batchsize) {");
			h("for(int k=0; k<NPARAMS; ++k) {");
				h("gradient[k] = 0.;");
			h("}");
			
			h("int last = j+batchsize > size ? size : j+batchsize;");
			h("for(int k=j; k<last; ++k) {");
				h("loss += backward(params, gradient, &in[indices[k]*", num_nodes[0], "], &out[indices[k]*", num_nodes.back(),"]);");
			h("}");
			
			h("for(int k=0; k<NPARAMS; ++k) {");
				h("params[k] -= alpha * gradient[k] / (double)batchsize;");
			h("}");
		h("}");
		
		h("(void) loss;");
		
	h("}");
	
	h("}");
	
	
	}
	
	system("PAUSE");
	return 0;
}

