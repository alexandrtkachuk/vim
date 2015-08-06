syntax enable
set nocompatible
set tabstop=2
set shiftwidth=2
set nu
syntax on

set expandtab
"colors default"

syntax on
set bg=dark
set hlsearch
highlight Search ctermfg=Black
highlight StatusLine   term=NONE cterm=NONE ctermfg=white  ctermbg=blue
highlight Comment ctermfg=Green guifg=LightBlue
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

"highlight lCursor guifg=NONE guibg=Cyan"

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

"setings indent and tab
" noexpandtab for normal tab
set noexpandtab
set tabstop=8 shiftwidth=4 softtabstop=4
"set sw=4
"set ts=4


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



highlight Cursor guibg=Green guifg=NONE
highlight NonText guibg=grey80
highlight Constant gui=NONE guibg=grey95
highlight Special gui=NONE guibg=grey95
highlight Normal guibg=lightyellow


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


map <F3> :WMToggle<cr>
map <F4> :TagbarToggle<CR>

"map <F5> :! ./%<cr>
map <F6> :!perl -d %<cr>
map <F7> :!perl -cWT %<cr>
map <F8> :! phpunit --verbose  --bootstrap autoLoad.php   %<cr>
map <F9> :! phpunit   --bootstrap autoLoad.php --coverage-html ./infotest  %<cr>




