#include <iostream>
#include <string>
#include "io.h"

#include "gen_mnist.h"

#include <chrono>


auto argmax(double* a, int size) -> int
{
	int index = 0;
	double val = a[0];
	for(int i=0; i<size; ++i) {
		if(a[i] > val) {
			val = a[i];
			index = i;
		}
	}

	return index;
}


auto main() -> int
{
	std::string train_images_path, train_labels_path;
	std::cout << "train images: ";
	std::cin >> train_images_path;
	std::cout << "train labels: ";
	std::cin >> train_labels_path;
	
	std::vector<double> in_data, out_data;
	if(!loadImages(train_images_path, in_data)) { return EXIT_FAILURE; }
	if(!loadLabels(train_labels_path.c_str(), out_data)) { return EXIT_FAILURE; }
	
	std::vector<double> params(NPARAMS);
	init_params(params.data());
	
	auto start = std::chrono::high_resolution_clock::now();
	
	adam(in_data.data(), out_data.data(), out_data.size()/10, params.data(), 10, 64);
	
	auto end = std::chrono::high_resolution_clock::now();
	std::chrono::duration<double> elapsed = end - start;
	std::cout << "Elapsed: " << elapsed.count() << "s" << std::endl;
	std::string test_images_path, test_labels_path;
	std::cout << "test images: ";
	std::cin >> test_images_path;
	std::cout << "test labels: ";
	std::cin >> test_labels_path;
	
	std::vector<double> test_in_data, test_out_data;
	if(!loadImages(test_images_path, test_in_data)) { return EXIT_FAILURE; }
	if(!loadLabels(test_labels_path.c_str(), test_out_data)) { return EXIT_FAILURE; }
	
	std::vector<double> result_data(10);
	int num_good = 0;
	for(size_t i=0; i<test_out_data.size()/10; ++i) {
		forward(params.data(), &test_in_data[i*(28*28)], result_data.data());
		if(argmax(result_data.data(), 10) == argmax(&test_out_data[i*10], 10)) {
			num_good++;
		}
	}
	
	std::cout << "Success : " << (double)num_good*100.0/(double)(test_out_data.size()/10) << "%" << std::endl;
	

	system("PAUSE");
	return 0;
}

