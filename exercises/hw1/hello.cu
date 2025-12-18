#include <stdio.h>

__global__ void hello(){
  printf("Hello from block: %u, thread: %u\n", blockIdx.x, threadIdx.x);
  // Hello from block: 0, thread: 0
  // Hello from block: 0, thread: 1
  // Hello from block: 1, thread: 0
  // Hello from block: 1, thread: 1
  // block 2个 thread 2个
}

int main(){
  hello<<<2, 2>>>();
  // hello<<<FIXME>>>();
  cudaDeviceSynchronize();
}

