let mapleader = "," " Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

syntax on
filetype plugin indent on

"colorscheme tomorrow-night-eighties
set background=dark
colorscheme solarized

set nobackup
set nowritebackup
set noswapfile
set lines=40
set columns=80
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on
filetype on
filetype plugin on

set t_Co=256
set t_ut=

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

noremap <leader>8 :set rnu <enter>

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Powerline
set rtp+=/usr/share/vim/vim73/bundle/powerline/bindings/vim

" Auto complete tab stuff
" function! Smart_TabComplete()
"   let line = getline('.')                         " current line
" 
"   let substr = strpart(line, -1, col('.')+1)      " from the start of the current
"                                                   " line to one character right
"                                                   " of the cursor
"   let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
"   if (strlen(substr)==0)                          " nothing to match on empty string
"     return "\<tab>"
"   endif
"   let has_period = match(substr, '\.') != -1      " position of period, if any
"   let has_slash = match(substr, '\/') != -1       " position of slash, if any
"   if (!has_period && !has_slash)
"     return "\<C-X>\<C-P>"                         " existing text matching
"   elseif ( has_slash )
"     return "\<C-X>\<C-F>"                         " file matching
"   else
"     return "\<C-X>\<C-O>"                         " plugin matching
"   endif
" endfunction
" 
" noremap <tab> <c-r>=Smart_TabComplete()<CR>

" numbers stuff
noremap <F3> :NumbersToggle<CR>

set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'Blackrush/vim-gocode'
Plugin 'scrooloose/nerdtree'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ervandew/supertab'
Plugin 'garyharan/vim-proto'
Plugin 'mileszs/ack.vim'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'tabnine/YouCompleteMe'

"Plugin 'sebdah/vim-delve'

" Plugin 'vim-latex/vim-latex'
" Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()            " required
filetype plugin indent on    " required

" Go! Stuffs
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" Auto Compile
autocmd FileType go compiler go
" Auto complete all day
set omnifunc=syntaxcomplete#Complete
syntax on

" Auto complte accpetenace with ctrl-y
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

"Window movement
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

imap jk <Esc>
" Bind omni complete to shift-tab
imap <C-o> <C-x><C-o>

" Stuff for syntastic
" :help syntastic-checker-options for help with options
let g:syntastic_warning_symbol='⚠'
let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_jump=1
let g:syntastic_go_checkers = ['go']
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

let g:go_fmt_experimental = 1

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:Tex_MultipleCompileFormats = 'pdf'

set rnu
set nu

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

map <C-n> :NERDTreeToggle<CR>

"let g:go_fmt_command = "goimports"
let g:go_imports_autosave = 1
autocmd BufNewFile,BufReadPost *.h,*.cxx,*.cpp,*.cc set filetype=cpp

set ignorecase
set smartcase

set rtp+=/usr/local/opt/fzf

"set re=1
set re=2
set ttyfast
set lazyredraw

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" set foldmethod=syntax

" go pls stuff
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'
"
let loaded_spellfile_plugin = 1

"underline spell errors in terminals
hi SpellBad cterm=underline

let g:go_debug_address = '127.0.0.1:8182'
let g:go_debug_windows = {
        \ 'vars':       'leftabove 100vnew',
        \ 'stack':      'leftabove 20new',
        \ 'goroutines': 'botright 30new',
        \ 'out':        'botright 5new',
\ }
let g:go_debug_preserve_layout = 1
