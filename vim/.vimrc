set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" for template
autocmd BufNewFile *.cpp 0r $HOME/dotfiles/templates/cpp.txt

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" [plugin] file search
NeoBundle "ctrlpvim/ctrlp.vim"

" [plugin] formatter
NeoBundle "ruby-formatter/rufo-vim"

call neobundle#end()
execute pathogen#infect()
" Required:
filetype plugin indent on


" Enable rufo (RUby FOrmat)
let g:rufo_auto_formatting = 1
