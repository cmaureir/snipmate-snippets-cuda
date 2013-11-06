" Vim syntax file
" Language:	CUDA
" Maintainer:
" Last Change:

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the CPP syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

" CUDA keywords
syn keyword cType  __global__ __host__ __device__
syn keyword cType  __constant__ __shared__
syn keyword cType  dim1 dim2 dim3 dim4
syn keyword cType  int1 int2 int3 int4
syn keyword cType  uint1 uint2 uint3 uint4
syn keyword cType  float1 float2 float3 float4
syn keyword cType  double1 double2 double3 double4
syn keyword cType  char1 char2 char3 char4
syn keyword cType  uchar1 uchar2 uchar3 uchar4
syn keyword cType  short1 short2 short3 short4
syn keyword cType  int2float float2int
syn keyword cType  thrust

" CUDA special keywords
syn match       String          "threadIdx\.[xyz]"
syn match       String          "blockIdx\.[xyz]"
syn match       String          "blockDim\.[xyz]"
syn match       String          "GridDim\.[xyz]"
syn match       String          "cudaMemcpyHostToDevice"
syn match       String          "cudaMemcpyDeviceToHost"
syn match       String          "cudaMemcpyDeviceToDevice"

" CUDA functions
syn keyword cLabel __syncthreads cudaThreadSynchronize
syn keyword cLabel cudaEventCreate cudaEventRecord cudaEventSynchronize
syn keyword cLabel cudaEventElapsedTime cudaEventDestroy
syn keyword cLabel cudaMalloc cudaFree cudaMemcpy
