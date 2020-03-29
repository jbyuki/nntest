#include "io.h"

auto read8(std::ifstream& in) -> uint8_t
{
	uint8_t res;
	in.read(reinterpret_cast<char*>(&res), sizeof(res));
	return res;
}

auto read16(std::ifstream& in) -> uint16_t
{
	uint16_t res;
	in.read(reinterpret_cast<char*>(&res), sizeof(res));
	return ((res&0xFF) << 8) | ((res&0xFF00) >> 8);
}

auto read32(std::ifstream& in) -> uint32_t
{
	uint32_t res;
	in.read(reinterpret_cast<char*>(&res), sizeof(res));
	return ((res&0xFF) << 24) | 
		((res&0xFF00) << 8) | 
		((res&0xFF0000) >> 8) | 
		((res&0xFF000000) >> 24);
}

auto loadImages(const std::string& filename, std::vector<double>& data) -> bool
{
	std::ifstream in(filename, std::ios::binary);
	if(!in.is_open()) {
		std::cerr << "ERROR: Could not open " << filename << std::endl;
		return false;
	}

	std::cout << "Reading " << filename << std::endl;

	uint32_t magic_number = read32(in);
	uint32_t num_images = read32(in);
	uint32_t num_rows = read32(in);
	uint32_t num_cols = read32(in);

	if(magic_number != 2051) {
		std::cout << "ERROR! Incorrect magic number!" << std::endl;
		return false;
	}

	std::cout << "Number of images: " << num_images << std::endl;
	std::cout << "Number of rows: " << num_rows << std::endl;
	std::cout << "Number of cols: " << num_cols << std::endl;
	std::vector<uint8_t> u8data(num_images * num_rows * num_cols);
	in.read(reinterpret_cast<char*>(u8data.data()), u8data.size());

	data.resize(u8data.size());
	for(int i=0; i<(int)u8data.size()/(28*28); ++i) {
		for(int j=0; j<28*28; ++j) {
			data[(28*28)*i+j] = (double)u8data[28*28*i+j]/255.0;
		}
	}

	return true;
}

auto loadLabels(const char* filename, std::vector<double>& data) -> bool

{
	std::ifstream in(filename, std::ios::binary);
	if(!in.is_open()) {
		std::cerr << "ERROR: Could not open " << filename << std::endl;
		return false;
	}

	std::cout << "Reading " << filename << std::endl;

	uint32_t magic_number = read32(in);
	uint32_t num_items = read32(in);

	if(magic_number != 2049) {
		std::cout << "ERROR! Incorrect magic number!" << std::endl;
		return false;
	}

	std::cout << "Number of items: " << num_items << std::endl;

	std::vector<uint8_t> u8data(num_items);
	in.read(reinterpret_cast<char*>(u8data.data()), u8data.size());
	
	data.resize(u8data.size()*10);
	for(int i=0; i<(int)u8data.size(); ++i) {
		for(int j=0; j<10; ++j) {
			data[10*i+j] = 0.f;
		}
		data[10*i+u8data[i]] = 1.0;
	}
	return true;
}
