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
  so <sfile>:p:h/h.vim
else
  runtime! syntax/h.vim
  unlet b:current_syntax
endif

" Read the CUDA syntax to start with
if version < 600
  so <sfile>:p:h/cu.vim
else
  runtime! syntax/cu.vim
  unlet b:current_syntax
endif
