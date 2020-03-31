#include <vector>

#include <iostream>

#include <sstream>

#include <algorithm>

#include <string>


int num_layers;
std::vector<int> num_nodes; // size() = num_layers

int num_tabs = 0;

bool has_sigmoid = false;

bool has_relu = false;

enum OUTPUT_MODE
{
	PLAIN,
	MKL,
} mode;

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
	std::cin >> num_layers;
	for(int i=0; i<num_layers; ++i) {
		int num_node;
		if(i == 0) { std::cout << "Num inputs"; }
		else if(i == num_layers-1) { std::cout << "Num outputs"; }
		else { std::cout << "Num hidden"; }
		std::cout << " (layer = " << i << "): ";
		std::cin >> num_node;
		num_nodes.push_back(num_node);
		
	}
	
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
	
	std::string use_mkl;
	std::cout << "Use MKL (y/n)? ";
	std::cin >> use_mkl;
	
	mode = (use_mkl == "y" || use_mkl == "yes") ? MKL : PLAIN;
	
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
	
	if(mode == MKL) {
		h("#include <mkl.h>");
	}
	
	h("");
	h("const int NPARAMS = ", nparams, ";");
	h("const int NIN = ", num_nodes[0], ";");
	h("const int NOUT = ", num_nodes.back(), ";");
	
	h("");
	for(auto& a : activations) {
		if(a == "sigmoid") {
			has_sigmoid = true;
		}
		
		if(a == "relu") {
			has_relu = true;
		}
		
		
	}
	
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
		if(mode == PLAIN) {
			h("for(int i=0; i<", num_nodes[i], ";++i) {");
				h(out, "+i] = 0.f;");
				h("for(int j=0; j<", num_nodes[i-1], ";++j) {");
					h(out, "+i] += params[", param_index, "+", num_nodes[i-1], "*i+j]*", in, "+j];");
				h("}");
				h(out, "+i] += params[", param_index+num_nodes[i-1]*num_nodes[i], "+i];");
				
				h(out, "+i] = ", activations[i-1], "(", out, "+i]);");
				
			h("}");
		}
		
		if(mode == MKL) {
			h("cblas_dgemv(CblasRowMajor, CblasNoTrans,", num_nodes[i], ", ", num_nodes[i-1], ", 1.0, &params[", param_index, "],", num_nodes[i-1], ", &", in, "], 1, 0.0, &", out, "], 1);");
			h("cblas_daxpy(", num_nodes[i], ", 1.0, &params[", param_index+num_nodes[i-1]*num_nodes[i], "], 1, &", out, "], 1);");
			h("for(int i=0; i<", num_nodes[i], ";++i) {");
				h(out, "+i] = ", activations[i-1], "(", out, "+i]);");
			h("}");
		}
		
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
	h("static double y[", nnodes, "];");
	
	int node_index = 0;
	int param_index = 0;
	for(size_t i=1; i<num_nodes.size(); ++i) {
		h("");
		h("// layer ", i-1, " -> ", i);
		if(mode == PLAIN) {
			h("for(int i=0; i<", num_nodes[i], ";++i) {");
				h("o[", node_index, "+i] = 0.f;");
				h("for(int j=0; j<", num_nodes[i-1], "; ++j) {");
					if(i == 1) {
					h("o[", node_index, "+i] += params[", param_index, "+i*", num_nodes[i-1], "+j] * in[j];");
					} else {
					h("o[", node_index, "+i] += params[", param_index, "+i*", num_nodes[i-1], "+j] * y[", node_index - num_nodes[i-1], "+j];");
					}
				h("}");
				h("o[", node_index, "+i] += params[", param_index+num_nodes[i-1]*num_nodes[i], "+i];");
				
				
				
				h("y[", node_index, "+i] = ", activations[i-1], "(o[", node_index, "+i]);");
			h("}");
		}
		
		
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
		h("back[", rnode_index, "+i] = y[", rnode_index, "+i]- exp[i];");
		h("loss += 0.5*back[", rnode_index, "+i]*back[", rnode_index, "+i];");
	h("}");
	h("");
	
	h("// layer ", num_nodes.size()-1);
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
	
	int rparam_index_prev;
	for(size_t i=num_nodes.size()-2; i>0; --i) {
		rnode_index -= num_nodes[i];
		rparam_index_prev = rparam_index;
		rparam_index -= num_nodes[i] * (num_nodes[i-1]+1);
		
		h("");
		h("// layer ", i);
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
			
			if(mode == PLAIN) {
				h("for(int k=0; k<NPARAMS; ++k) {");
					h("params[k] -= alpha * gradient[k] / (double)batchsize;");
				h("}");
			}
			
			if(mode == MKL) {
				h("cblas_daxpy(NPARAMS, -alpha/(double)batchsize, &gradient[0], 1, &params[0], 1);");
			}
		h("}");
		
		h("(void) loss;");
		
	h("}");
	
	h("}");
	
	
	}
	
	system("PAUSE");
	return 0;
}

