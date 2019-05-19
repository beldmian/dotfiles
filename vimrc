let mapleader =","

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'arcticicestudio/nord-vim'
call plug#end()

set go=a
set mouse=a
set nohlsearch
set clipboard=unnamedplus

" Some basics:
	hi Normal guibg=NONE ctermbg=NONE
	hi NonText ctermbg=none 
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	map <leader>q :q!<CR>
	map <leader>w :w!<CR>
	colorscheme nord
       	set background=dark	
" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo <CR>

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Vim Tex
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
	let g:livepreview_previewer='zathura'
" UltiSnips
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" Split navigation
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

