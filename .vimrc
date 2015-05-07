let mapleader = ","
" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

execute pathogen#infect()
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

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Powerline
set rtp+=/usr/share/vim/vim73/bundle/powerline/bindings/vim

" Auto complete tab stuff
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

noremap <tab> <c-r>=Smart_TabComplete()<CR>

" numbers stuff
noremap <F3> :NumbersToggle<CR>

set laststatus=2

" Vundle Stuffs
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'scrooloose/syntastic'
Bundle 'fatih/vim-go'
Bundle 'Blackrush/vim-gocode'

filetype plugin indent on     " required!

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
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

set rnu

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
