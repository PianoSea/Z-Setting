set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'hdima/python-syntax'
Plugin 'itchyny/lightline.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'claco/jasmine.vim'
Plugin 'burnettk/vim-angular'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Valloric/MatchTagAlways'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'magarcia/vim-angular2-snippets'
Plugin 'keith/swift.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'fatih/vim-go'
Plugin 'tweekmonster/django-plus.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'posva/vim-vue'
call vundle#end()
filetype plugin indent on
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
""runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
"python with Virthualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"    projct_base_dir = os.environ['VIRTUAL_ENV']
"    activet_this = os.path.join(project_base_dir, 'bin/active_this.py')
"    execfile(active_this, dict(__file__=activate_this))
"EOF

set nu
set bg=dark
set tabstop=4
set shiftwidth=4
set ic
set expandtab

function! SetSoftTab()
    let &l:tabstop=4
    let &l:expandtab=1
endfunction
nmap <F7> :call SetSoftTab()<CR>

function! SetHardTab()
    let &l:tabstop=0
    let &l:expandtab=0
endfunction
nmap <F8> :call SetHardTab()<CR>

set scrolloff=3
set cursorline
set cursorcolumn
colorscheme blackbeauty
nnoremap <silent><F5> :NERDTree<CR>
let g:NERDTreeWinPos = "right"
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \}
let python_highlight_all = 1
set laststatus=2
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_python_binary_path = 'python3'
let g:angular_find_ignore = ['build/', 'dist/']
let g:nerdtree_tabs_synchronize_view = 0
vnoremap <C-c> "+y
vnoremap <C-p> "+p
inoremap <C-[> <esc>
"dart :Dart2Js :DartAnalyzer :DartFmt
let dart_html_in_string=v:true
"let dart_corelib_highlight=v:false
let dart_style_guide =2
let dart_format_on_save = 1
