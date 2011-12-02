Snipmate.vim for CUDA files
===========================

This plugins aims to provide some
snippets for writing CUDA files.

How to install
--------------

You need to clone this repository
to your *~.vim/bundle/* directory,
if your use the `Pathogen`_ plugin,
if not, just clone the repo and move the `cu.snippets`
to your snippets directory.

Due `CUDA` files are not widely recognized,
you need to add the following line to your `~.vimrc`
file::
    
    au BufNewFile,BufRead *.cu set ft=cu

.. _Pathogen:: https://github.com/tpope/vim-pathogen
