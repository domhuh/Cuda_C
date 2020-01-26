#include <iostream>
/*
export PATH=/Developer/NVIDIA/CUDA-10.2/bin${PATH:+:${PATH}}
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-10.2/lib\${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}
*/
__global__ void kernel(){
	
}


int main(void){
	int count;
	cudaDeviceProp prop;

	cudaGetDeviceCount(&count);
	
	for (int i=0;i<count;i++){
		cudaGetDeviceProperties(&prop, i);
		std::cout<< prop.name<< std::endl;
		std::cout<< prop.major << prop.minor << std::endl;
		std::cout<< prop.clockRate << std::endl;
	}


	return 0;
}