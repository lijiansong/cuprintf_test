#include <stdio.h>
#include "cuPrintf.cu"


__global__ void testKernel(int val) {
       cuPrintf("\tValue is:%d\n", val);
}

int main(int argc, char *argv[]) {
       cudaPrintfInit(); 
       testKernel<<< 2, 3 >>>(10); 
       cudaPrintfDisplay(stdout, true); 
       cudaPrintfEnd(); 
       return 0;
}

