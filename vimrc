scriptencoding utf-8
set encoding=utf-8

" Refer: http://blog.sensible.io/2012/10/18/pathogenize-your-vim.html

" Runtime Path Manipulation https://github.com/tpope/vim-pathogen
execute pathogen#infect()

set nocompatible

" Enable overriding settings of vim-sensible
runtime! plugin/sensible.vim
" Put overrides here

syntax on
set nobackup
set number!
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Fix `crontab: temp file must be edited in place` issue
" http://calebthompson.io/crontab-and-vim-sitting-in-a-tree/
autocmd filetype crontab setlocal nobackup nowritebackup

set textwidth=0

set hlsearch

" Make the 'case' in the same column with 'switch'
set cinoptions=:N

set nocp

" Share clipboard with Windows
set clipboard+=unnamed

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Title bar and status bar
" Title bar: file path, tag, program name, os
set titlestring=%F\ %h%m%r%w\ -\ %{v:progname}
" Status bar: filename, filename, tag, filetype, encoding, fileformat, currpos, currrelpos, linecnt
set statusline=%f\ %h%m%r%w[%{strlen(&filetype)?&filetype:'none'},%{&encoding},%{&fileformat}]%=%-14.(%l,%c%V%)\ %<%p%%\ \ \ [%L]

" Close toolbar
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Ctags
set tags=tags;

" Set autochdir
nmap <F9> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set background=dark
" solarized options
let g:solarized_termtrans = 1

" auto locate to last editing position
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal g'\"" | endif

" show control characters
set list
set listchars=tab:»·,nbsp:·,trail:·,extends:>,precedes:<

" disable riv folding
let g:riv_disable_folding = 1
" change riv browser to chrome
let g:riv_web_browser = "chrome"
