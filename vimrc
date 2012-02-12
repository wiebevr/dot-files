" .vimrc
" Written by Wiebe Van Ranst

" Tabs are 4 spaces + autoident
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

" Show line numbers
set number

" Match opposite bracet
set showmatch

" Highlight line
set ruler

" Dark background
set background=dark

" enable mouse
set mouse=a

" Filetype + syntax highlighting
filetype plugin indent on
syntax on

" Disable backup
set nobackup
set nowb
set noswapfile

" In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" clang auto completion
let g:clang_complete_auto = 0

" Color Scheme
if has("gui_running")
    colorscheme inkpot
    set guioptions -=m
    set guioptions -=T
else
    set t_Co=256
    colorscheme molokai
endif

" Spell check
set spelllang=nl,en
set spell

" omnicoplete for java (Android development)
"if has("autocmd")
" autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"endif 
