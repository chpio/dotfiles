set tabstop=2
set shiftwidth=2
set autoindent
set noswapfile
set wildmenu
filetype plugin indent on
set number
set hlsearch
set ignorecase
set smartcase
set incsearch

map Y y$

function! TrimWhiteSpace()
	%s/\s\+$//e
endfunction

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

