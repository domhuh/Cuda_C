#include <iostream>

// kernel method
__global__ void add(int a, int b, int *c)
{
	*c = a+b;
}

int main(void)
{
	int c, *dev_c;

	//address that points to *dev_c
	//deref dev_c and points to gpu_mem
	cudaMalloc ( (void **) &dev_c, sizeof(int) );

	add <<<1,1>>> (5,4,dev_c);

	cudaMemcpy (&c, dev_c, sizeof(int), cudaMemcpyDeviceToHost);

	cudaFree(dev_c);

	std::cout << c;


	return 0;
}