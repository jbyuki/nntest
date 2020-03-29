#pragma once

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <array>

auto read8(std::ifstream& in) -> uint8_t;
auto read16(std::ifstream& in) -> uint16_t;
auto read32(std::ifstream& in) -> uint32_t;
auto loadImages(const std::string& filename, std::vector<double>& data) -> bool;
auto loadLabels(const char* filename, std::vector<double>& data) -> bool;
