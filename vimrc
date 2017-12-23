set t_Co=256
set history=1024
set syntax=on
filetype on
set nocompatible
set autoread
let mapleader = ","
let g:mapleader = ","
nmap <leader>w : w<cr>
nmap <leader>q : q<cr>
set wildmenu
set ruler
set nu
winpos 5 5
set hid
set whichwrap+=<,>
set backspace=indent,eol,start
set showcmd
set autowrite
set shiftwidth=4
set tabstop=4
set encoding=utf-8
set smarttab
set smartindent
set ai
set si
set wrap
syntax enable
colorscheme molokai 
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O
func SkipPair()  
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
		    return "\<ESC>la"  
	 else  
			 return "\t"  
	 endif  
endfunc
inoremap <TAB> <c-r>=SkipPair()<CR>
set cursorline
autocmd BufNewFile,BufRead * :syntax match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\s*("me=e-1
hi cFunctions ctermfg=178 
hi Macro ctermfg=161 cterm=bold
hi PreCondit ctermfg=161 cterm=bold
hi Function ctermfg=181 cterm=italic
hi Include ctermfg=161 cterm=bold
