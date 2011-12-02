Snipmate.vim for CUDA files
===========================

**Author:** Cristián Maureira - cmaureirafredes@gmail.com

This plugins aims to provide some
snippets for writing CUDA files.

The current content is:

**CUDA functions**:

 * ``__syncthreads()`` (sync),
 * ``cudathreadsynchronize()`` (thsync),
 * ``cudaEventCreate()`` (eventc),
 * ``cudaEventRecord()`` (eventr),
 * ``cudaEventSynchronize()`` (events),
 * ``cudaEventElapsedTime()`` (evente),
 * ``cudaEventDestroy()`` (eventd),
 * ``cudaMalloc()`` (malloc),
 * ``cudaFree()`` (free),
 * ``cudaMemCpy()`` (memcpy),
 * ``cudaMemCpy(HostToDevice)`` (memcpyhd),
 * ``cudaMemCpy(DeviceToHost)`` (memcpydt),

**CUDA structures**:

 * ``__global__`` (global),
 * ``__device__`` (device),
 * ``kernel <<< ... <<< ()`` (kernel),
 
**CUDA data types**:

 * ``cudaEvent_t`` (eventt),

** *CUDA words**:

 * ``cudaMemCpyHostToDevice`` (htod),
 * ``cudaMemCpyDeviceToHost`` (dtoh),

**CUDA code lines**:

 * ``threadidx.x + blockdim.x * blockidx.x`` (id)

The last CUDA code line is used in almost all CUDA programs.

Dependencies
------------

 * Vim
 * Snipmate_.

How to install
--------------

You need to clone this repository
to your *~.vim/bundle/* directory,
if your use the Pathogen_ plugin,
if not, just clone the repo and move the `cu.snippets`
to your ``snippets`` directory.

Due `CUDA` files are not widely recognized,
you need to add the following line to your `~.vimrc`
file::
    
    au BufNewFile,BufRead *.cu set ft=cu

.. _Pathogen: https://github.com/tpope/vim-pathogen
.. _Snipmate: https://github.com/garbas/vim-snipmate
