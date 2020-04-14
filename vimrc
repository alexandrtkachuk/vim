syntax enable
set nocompatible
set tabstop=2
set shiftwidth=2
set nu
syntax on

set expandtab
"colors default"
"
syntax on
set bg=dark
set hlsearch
set incsearch
set guifont=courier_new:h10:cRUSSIAN
set laststatus=2
set completeopt=menu
set statusline=%t\ -\ %f%=:%l/%L\(%c\)\ -\ %2p%%
set linebreak
set listchars=tab:<-,eol:~
set ruler
set sidescroll=5
set sidescrolloff=5
set backspace=indent,eol,start
set nobackup
"set guifont=-*-fixed-medium-r-semicondensed-*-13-*-*-*-*-*-utf-8*
"set encoding=utf-8



filetype plugin indent on

"вкл/выкл 
"let g:winManagerWidth=35    
" ширина

set wildmenu
set wcm=<Tab>
menu Exit.quit     :quit<CR>
menu Exit.quit!    :quit!<CR>
menu Exit.save     :exit<CR>
map <F10> :emenu Exit.<Tab>


"set
set mouse=a
set mousemodel=popup
set wildmenu
set wcm=<Tab>
menu Encoding.Read.koi8-r  :e ++enc=koi8-r<Enter>
menu Encoding.Read.windows-1251  :e ++enc=cp1251<Enter>
menu Encoding.Read.cp866   :e ++enc=cp866<Enter>
menu Encoding.Read.utf-8   :e ++enc=utf-8<Enter>
map <F9> :emenu Encoding.Red.<Tab>
abb func_ function <Esc>mai()<CR>{<CR><CR>}<Esc>`ai
abb if_ if ( <Esc>mai )<CR>{<CR><CR>}<Esc>`ai
abb for_ for ( ; ; )<CR>{<CR><CR>}<Esc>`ai
abb foreach_ foreach ( <Esc>mai as $key => $value )<CR>{<CR><CR>}<Esc>`ai
abb while_ while ( <Esc>mai )<CR>{<CR><CR>}<Esc>`ai
abb class_ class <Esc>mai<CR>{<CR><CR>}<Esc>`ai
abb ifelse_ if ( <Esc>mai )<CR>{<CR><CR>}<CR>else<CR>{<CR><CR>}<Esc>`ai
abb <? <?php <Esc>mai ?><Esc>`ai

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4


set showmatch " \xd0\xd2\xcf\xd7\xc5\xd2\xcb\xc1 \xd3\xcb\xcf\xc2\xcf\xcb
set history=500 " \xd5\xd7\xc5\xcc\xc9\xde\xc5\xce\xc9\xc5 \xc9\xd3\xd4\xcf\xd2\xc9\xc9 \xcb\xcf\xcd\xc1\xce\xc4
filetype plugin on
filetype indent on
set undolevels=500
set ttyfast
set encoding=utf-8
set number

set ch=2

match ErrorMsg '\%>79v.\+'
"2mat ErrorMsg /\(,[A-Za-z0-9$'"]\)\|\(  \)\|\([A-Za-z0-9$'")\]]=\)\|\(=[\[(A-Za-z0-9$'"]\)/


"pasive ftp
let g:netrw_ftp_cmd = 'pftp'
set background=dark

"настройки горячих клавиш
"map в режиме команд
"imap в режиме редактора
map <F1>   :tabprev<Enter>
map <F2>   :tabnext<Enter>

"map <F6>   <esc>:w<Enter>
"imap <F6>   <esc>:w<Enter>i
"imap <INS>  <esc><Ins>

"map <F2>        <esc>:tabnew .<Enter>
"imap <F2>  <esc>:tabnew .<Enter>i
"map <F4>    <esc>:q<Enter>
"imap <F4>  <esc>:q<Enter>i


map <F3> :NERDTreeToggle<cr>
map <F4> :TagbarToggle<CR>

"map <F5> :! ./%<cr>
map <F6> :!perl -d %<cr>
map <F7> :!perl -cWT %<cr>
map <F8> :! phpunit --verbose  --bootstrap autoLoad.php   %<cr>
map <F9> :! phpunit   --bootstrap autoLoad.php --coverage-html ./infotest  %<cr>

"install vundle git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


"settings for vundle

set nocompatible

"filetype off  “обязательно!

set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#rc()

filetype plugin indent on     " обязательно!


"репозитории на github
Plugin 'gmarik/Vundle.vim' "чтоб не удалялся

"php
Plugin 'stanangeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'sumpygump/php-documentor-vim'

"html and js
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'


" --- Python ---
"Plugin 'klen/python-mode'            " Python mode (docs, refactor, lints,
"highlighting, run and ipdb and more)
"Plugin 'davidhalter/jedi-vim'        " Jedi-vim autocomplete plugin
"Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

"-------Perl---------
Plugin 'vim-perl/vim-perl'
"other
Plugin 'vim-scripts/ctags.vim'
Plugin 'ctrlpvim/ctrlp.vim' " need ctags install 
Plugin 'evidens/vim-twig'
"Plugin 'Valloric/YouCompleteMe' "need install build-essential cmake
"Plugin 'vim-syntastic/syntastic' "syntax
"к темам нужны шрифты: https://github.com/powerline/fonts
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'            " Project and file navigation
Plugin 'majutsushi/tagbar'              " Class/module browser


filetype plugin on
set omnifunc=syntaxcomplete#Complete

"подстветка и прочее
"ctermfg=цвет текста 
"ctermbg=цвет фона
"cterm  = тип текста, типа курсив и т.д

highlight phpKeyword ctermfg=yellow
highlight phpClass ctermfg=DarkMagenta "имя класса, также от которого наследуеться 
highlight phpClassImplements ctermfg=Magenta
highlight phpIdentifier ctermfg=lightBlue "имя переменных 
highlight phpType ctermfg=Green "значения типа public, class и.д.
highlight phpMethod ctermfg=Green
highlight phpFunction ctermfg=Green



