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

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" CUDA keywords
syn keyword cType  __global__ __host__ __device__
syn keyword cType  __constant__ __shared__
syn keyword cType  dim1 dim2 dim3 dim4
syn keyword cType  int1 int2 int3 int4
syn keyword cType  uint1 uint2 uint3 uint4
syn keyword cType  float1 float2 float3 float4
syn keyword cType  char1 char2 char3 char4
syn keyword cType  uchar1 uchar2 uchar3 uchar4
syn keyword cType  short1 short2 short3 short4
syn keyword cType  int2float float2int

" CUDA special keywords
syn match       String          "blockIdx\.[xy]"
syn match       String          "blockDim\.[xy]"
syn match       String          "GridDim\.[xy]"
syn match       String          "threadIdx\.[xyz]"
syn match       String          "cudaMemCpyHostToDevice"
syn match       String          "cudaMemCpyDeviceToHost"

" CUDA functions
syn keyword cLabel __syncthreads cudaThreadSynchronize
syn keyword cLabel cudaEventCreate cudaEventRecord cudaEventSynchronize cudaEventElapsedTime cudaEventDestroy
syn keyword cLabel cudaMalloc cudaFree cudaMemcpy
