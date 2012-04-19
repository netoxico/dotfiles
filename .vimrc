"Personal .virmc configurations
"Author: Ernesto Vargas
"Source: https://github.com/netoxico/dotvimk

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin indent on

set nocompatible
set number

syntax on

set background=dark
colorscheme molokai


if has("gui_running")
  set colorcolumn=+1
  set guioptions-=m
  set guioptions-=T
  "set guifont=Menlo:h13"
  set guifont=Menlo\ Regular\ for\ Powerline:h12
  " Different cursors for different modes.
  set guicursor=n-c:block-Cursor-blinkon0
  set guicursor+=v:block-vCursor-blinkon0
  set guicursor+=i-ci:ver20-iCursor  
  highlight SpellBad term=underline gui=undercurl guisp=Orange
  if !exists("g:vimrcloaded")
      winpos 0 0
      if !&diff
          winsize 180 120
      else
          winsize 227 120
      endif
      let g:vimrcloaded = 1
  endif
endif
:nohls


let mapleader = ","
inoremap jj <ESC>

set encoding=utf-8
set modelines=0
set hidden
set hlsearch
set cursorline
set visualbell
set history=1000
set list
set listchars=tab:▸\ ,eol:¬
set autoindent
set showmode
set showcmd
set ttyfast
set ruler
set smartindent
set showbreak=↪

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wrap
set textwidth=85
set formatoptions=qrn1

set timeoutlen=500

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

"Full Screen"
inoremap <F8> <ESC>:set invfullscreen<CR>a
nnoremap <F8> :set invfullscreen<CR>
vnoremap <F8> :set invfullscreen<CR>

"Fold Html Tag"
au BufNewFile,BufRead *.html map <leader>ft Vatzf

"Code completion
imap ,<tab> <C-x><C-o>

"set wildmenu
"set completeopt=longest,menuone,preview
"inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-p> pumvisible() ? '<C-n>'  : '<C-n><C-r>=pumvisible() ? "\<lt>up>" : ""<CR>'
"inoremap <expr> <C-n> pumvisible() ? '<C-n>'  : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

let g:netrw_list_hide= '.*\.pyc$,^\.git/$,\.project$,\.pydevproject$,^\.settings/$,^\.svn/$,\.swp$'

"Tagbar
nmap <F6> :TagbarToggle<CR>

"Powerline for vim
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline

"PeepOpen map
map <leader><leader> <Plug>PeepOpen

:command! SortCSSBraceContents :g#\({\n\)\@<=#.,/}/sort

"Edit vimrc file in a new tab
nnoremap <F4> :tabedit $MYVIMRC<CR>

"Dropbox NOTES
nnoremap <F2> :tabedit ~/Dropbox/NOTES.txt<CR>

"BufExplorer
nnoremap <F3> :BufExplorer<CR>
"Pep8
let g:pep8_map=',8'

"Load the current buffer in Firefox - Mac specific.
abbrev ff :! open -a firefox.app %:p<cr>

"Load the current buffer in Google Chrome
abbrev gc :! open -a "Google Chrome" %:p<cr>

"sort css brace content
:nmap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>

"Edit snippet files 
nnoremap <F5> :tabedit ~/.vim/snippets/<CR>

"Source the vimrc file after saving it. This way, you don't have to reload
"Vim to see the changes.
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Django
au BufNewFile,BufRead *.html setlocal filetype=htmldjango

nnoremap _dt :set ft=htmldjango<CR>
nnoremap _pd :set ft=python.django<CR>

au BufNewFile,BufRead admin.py     setlocal filetype=python.django
au BufNewFile,BufRead urls.py      setlocal filetype=python.django
au BufNewFile,BufRead models.py    setlocal filetype=python.django
au BufNewFile,BufRead views.py     setlocal filetype=python.django
au BufNewFile,BufRead settings.py  setlocal filetype=python.django
au BufNewFile,BufRead forms.py     setlocal filetype=python.django

au BufNewFile,BufRead urls.py      setlocal nowrap
au BufNewFile,BufRead settings.py  normal! zR
au BufNewFile,BufRead dashboard.py normal! zR

"NERD Tree Settings
nnoremap <F1> <esc>:NERDTreeToggle<CR>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index', 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json', '.*\.o']

"Folding
set foldlevelstart=0

nnoremap <Space> za
vnoremap <Space> za
nnoremap zO zCzO

function! MyFoldText()
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction
set foldtext=MyFoldText()

