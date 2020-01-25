#include <iostream>
#include <chrono>


void add(float a, float b, float *c){
	*c = a + b;
}

int main(){
	float *c;
	auto t1 = std::chrono::high_resolution_clock::now();
	add(5.0,4.3,c);
	auto t2 = std::chrono::high_resolution_clock::now();
	auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>( t2 - t1 ).count();
	std::cout << *c << std::endl;
	std::cout << "Runtime: " << duration << " ns" << std::endl;

	return 0;
}