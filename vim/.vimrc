set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set number

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

" [plugin] suggest
NeoBundle "Shougo/neocomplete.vim"

" [plugin] slim
NeoBundle 'slim-template/vim-slim'

call neobundle#end()
execute pathogen#infect()
" Required:
filetype plugin indent on


" Enable rufo (RUby FOrmat)
let g:rufo_auto_formatting = 1

"シンタックスハイライト有効
syntax on
filetype plugin indent on
filetype indent on

" color setting
" http://d.hatena.ne.jp/connvoi_tyou/20080306/1204825179
hi Function ctermfg=darkgreen
hi Repeat ctermfg=darkgreen
hi String ctermfg=darkmagenta
hi Number ctermfg=darkmagenta
hi Boolean ctermfg=darkmagenta
hi Normal ctermfg=gray ctermbg=black
hi Cursor ctermfg=gray
hi Comment ctermfg=darkcyan
hi Constant term=underline ctermfg=blue
hi Special ctermfg=blue
hi Identifier term=underline ctermfg=white
hi Statement ctermfg=blue
hi PreProc term=underline ctermfg=darkgreen
hi Type term=underline ctermfg=darkgreen
hi Underlined term=underline cterm=underline ctermfg=darkcyan
hi Ignore ctermfg=blue
hi Error term=bold ctermbg=darkmagenta ctermfg=black
hi Todo term=bold ctermfg=black ctermbg=darkcyan
hi Pmenu ctermbg=black ctermfg=gray
hi PmenuSel ctermbg=darkcyan ctermfg=black
hi PmenuSbar ctermbg=darkred
hi PmenuThumb cterm=reverse ctermfg=gray
hi TabLine term=underline cterm=underline ctermfg=gray ctermbg=darkred
hi TabLineSel term=bold
hi TabLineFill term=reverse cterm=reverse
hi MatchParen term=reverse ctermfg=brown ctermbg=darkcyan
hi SpecialKey term=bold ctermfg=gray
hi NonText term=bold ctermfg=blue
hi Directory term=bold ctermfg=brown
hi ErrorMsg ctermbg=darkmagenta ctermfg=black
hi IncSearch term=reverse cterm=reverse ctermfg=brown ctermbg=black
hi Search term=reverse ctermfg=black ctermbg=brown
hi MoreMsg term=bold ctermfg=darkgreen
hi ModeMsg term=bold ctermfg=darkmagenta
hi LineNr term=underline ctermfg=yellow  ctermbg=darkgray
hi Question term=bold ctermfg=blue
hi StatusLine term=bold,reverse cterm=reverse ctermfg=blue ctermbg=black
hi StatusLineNC term=bold,reverse cterm=reverse ctermfg=blue ctermbg=black
hi VertSplit ctermfg=black ctermbg=darkred term=reverse cterm=reverse
hi Title ctermfg=gray
hi Visual term=reverse cterm=reverse ctermfg=darkcyan ctermbg=black
hi VisualNOS term=bold,underline ctermfg=darkcyan ctermbg=black
hi WarningMsg term=bold ctermfg=darkmagenta
hi WildMenu term=bold ctermfg=black ctermbg=darkcyan
hi Folded ctermbg=darkcyan ctermfg=black
hi FoldColumn ctermbg=darkcyan ctermfg=black
hi DiffAdd term=bold ctermbg=brown ctermfg=black
hi DiffChange term=bold ctermbg=darkred
hi DiffDelete term=bold ctermfg=black ctermbg=brown
hi DiffText term=reverse ctermbg=darkmagenta ctermfg=black
hi SignColumn term=bold ctermfg=black ctermbg=darkcyan

