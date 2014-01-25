call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi

""""""""""""""From Ryan Bates""""""""""""""""""""""'
set nobackup
set nowritebackup
set history=50

set ruler " show the cursor position all the time
set showcmd " display incomplete commands

" Don't use Ex mode, use Q for formatting
map Q gq

" Always display the status line
set laststatus=2

" \ is the leader character
let mapleader = ","

imap <c-t> :CommandT
" Edit the README_FOR_APP (makes :R commands work)
map <Leader>R :e doc/README_FOR_APP<CR>

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>u :Runittest
map <Leader>f :Rfunctionaltest
map <Leader>tm :RTmodel
map <Leader>tc :RTcontroller
map <Leader>tv :RTview
map <Leader>tu :RTunittest
map <Leader>tf :RTfunctionaltest
map <Leader>sm :RSmodel
map <Leader>sc :RScontroller
map <Leader>sv :RSview
map <Leader>su :RSunittest
map <Leader>sf :RSfunctionaltest

" Hide search highlighting
map <Leader>h :set invhls <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8
set arabicshape
set showcmd                     " display incomplete commands

filetype plugin indent on       " load file type plugins + indentation

syntax enable
" call togglebg#map("<F5>")
" if has('gui_running')
"   set background=light
" else
"   set background=dark
" endif
" let g:solarized_termcolors=32
" colorscheme solarized

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-ocean
set background=dark

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


let g:CommandTMaxHeight=20      " Command-T configuration

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

