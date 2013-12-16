" .vimrc
" Written by Wiebe Van Ranst

" Automatically reload .vimrc when editing
autocmd! bufwritepost .vimrc source %

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

" Highlight matches while typing
set incsearch
" Highlight all results when searching
set hlsearch

" Number of screen lines shown around the cursor
set scrolloff=4

" Cursorline
set cul

" Make all the windows the same size when adding and removing.
set ea
set wildmenu
set wildmode=list:longest,full


" Filetype + syntax highlighting
filetype plugin indent on
syntax on

" Disable backup
set nobackup
set nowb
set noswapfile

" In visual mode when you press * or # to search for the current selection
vnoremap <silent> # :call VisualSearch('b')<CR>
vnoremap <silent> * :call VisualSearch('f')<CR>

" clang auto completion
let g:clang_complete_auto = 0

" Color Scheme
if has("gui_running")
    colorscheme molokai
    set guioptions -=m
    set guioptions -=T
else
    set t_Co=256
    colorscheme molokai
endif

" Set color for invisible characters
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
highlight ExtraWhitespace guifg=#4a4a59

" 80 Characters line highlighting
highlight ColorColumn guibg=#2a1a1a

" Highlight line 80
set cc=80

" Highlight tabs and trailing spaces
set list
set listchars=tab:»\ ,trail:·

" Spell check
set spelllang=nl,en
set spell

" Create tab by pressing SHIFT + down arrow, change tab by using SHIFT + left
" or RIGHT
noremap <S-Down> :tabnew<CR>
map <S-Left> <C-PageUp>
map <S-Right> <C-PageDown>

" Use pathogen to manage plugins
execute pathogen#infect()

" Powerline
set laststatus=2
" Fancy symbols
let g:Powerline_symbols = 'fancy'

" ctrlp
set wildignore+=*.pyc
let g:ctrlp_max_height = 30

" Jedi-vim
let g:jedi#use_tabs_not_buffers = 0

" ipdb breakpoint shortcut
map <Leader>b :call InsertBreakpoint()<CR>

function! InsertBreakpoint()
    let trace = expand("import pdb; pdb.set_trace()")
    execute "normal o".trace
endfunction

" omnicoplete for java (Android development)
"if has("autocmd")
" autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"endif 
set omnifunc=syntaxcomplete#Complete

