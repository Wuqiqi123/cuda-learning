#include <iostream>

__global__ void gpu(){
    // blockIdx.x * blockDim.x + threadIdx.x;
    printf("hello gpu, blockIdx.x: %d, blockDim.x: %d, threadIdx.x: %d  \n", blockIdx.x, blockDim.x, threadIdx.x);
}

int main() {
    std::cout << "Hello, World!" << std::endl;

    gpu<<<2,3>>>();  // gpu配置 《block数 线程数》 不用for循环 O(n)的算法直接变成O(1)
    cudaDeviceSynchronize();

    return 0;
}
