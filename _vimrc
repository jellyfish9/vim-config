source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

language messages zh_CN.utf-8

if &diff
    let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
endif

set nocp
filetype on
syn on

set rtp+=D:\res\Vundle.vim
call vundle#begin('D:\res\vim-bundle')
"Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neocomplcache'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'yegappan/mru'
Plugin 'vim-scripts/Mark'
"Plugin 'git://repo.or.cz/vcscommand'
"Plugin 'jpitblado/vim-svn'
Plugin 'tpope/vim-fugitive'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'klen/python-mode'
Plugin 'nvie/vim-flake8'
"Plugin 'mileszs/ack.vim'
"Plugin 'spf13/PIV'
Plugin 'dkprice/vim-easygrep'
"Plugin 'mattn/emmet-vim'
"Plugin 'tomtom/tcomment_vim'
Plugin 'othree/html5.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'kshenoy/vim-signature'
Plugin 'airblade/vim-gitgutter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'posva/vim-vue'
call vundle#end()
filetype plugin indent on

colorscheme seagull
"set encoding=cp936
set termencoding=cp936
set fileencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,chinese,cp936
set nofoldenable
set fileformats=unix,dos
set wildmenu
setlocal noswapfile

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

exec "cd D:/project/front"

if has("gui_running")
	set guioptions-=T  " remove toolbar
	"set guioptions-=r  " remove right-hand scroll bar
	set guioptions-=l  " remove left-hand scroll bar
	set guioptions-=L  " remove left-hand scroll bar even if there is a vertical split
	"set guioptions-=b  " remove bottom scroll bar
	set iskeyword+=_,$,@,%,#,- 
endif
set sessionoptions-=help
set sessionoptions-=buffers
set sessionoptions-=options
let mapleader = ','
set textwidth=0
set noundofile
"set undodir = D:\soft\Vim\undo
"au BufNewFile,BufRead *.vue set ft=html
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
nnoremap <leader>5 :set ft=html<CR>

imap <c-l> <ESC>A
imap <c-k> <Up>
imap <c-j> <Down>
let g:gitgutter_git_executable = 'D:/soft/msys2/dev/git'
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplShowBufNumbers = 0
let g:miniBufExplMaxSize = 2
let g:miniBufExplorerAutoStart = 1

let g:PHP_SYNTAX_CHECK_BIN = 'D:/wnmp/php/php'
let g:session_directory=$vim.'\sessions'
let g:session_lock_enabled = 0
let g:tagbar_ctags_bin = $vim.'\ctags'
let g:tagbar_left = 0                                             
let g:tagbar_width = 20
let g:tagbar_compact = 1
let g:tagbar_singleclick = 1
let g:tagbar_autoshowtag = 2
let g:tagbar_autopreview = 0
let g:tagbar_autoclose = 0
let g:tagbar_foldlevel = 0
let g:tagbar_vertical = 1
let g:tagbar_compact = 1

let NERDTreeWinSize=26
let NERDTreeMouseMode = 2
let NERDTreeHighlightCursorline = 1
let NERDTreeWinPos = "right"
"let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=1
let NERDTreeBookmarksFile=$vim.'\projects'
let NERDTreeSortOrder=['\/$', '\.php$', '\.c$', '\.js$', '\.css$', '\.html$']
let NERDTreeIgnore=['tags$', '\.xml$', '\.txt$', 'node_modules$']
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

let g:user_emmet_mode='i'
let g:user_emmet_settings = {
            \  'indentation' : '  ',
            \  'perl' : {
            \    'aliases' : {
            \      'req' : 'require '
            \    },
            \    'snippets' : {
            \      'use' : "use strict\nuse warnings\n\n",
            \      'warn' : "warn \"|\";",
            \    }
            \  }
            \}
"let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1
let g:DisableAutoPHPFolding = 1
let g:user_emmet_install_global = 0
"autocmd FileType html EmmetInstall
"let NERDTreeHijackNetrw=1
"let NERDTreeCascadeOpenSingleChildDir=0
"let NERDTreeShowFiles=0

"let g:winManagerWindowLayout='NERDTree'
"let g:winManagerWidth = 15
"let g:AutoOpenWinManager = 1 
let MRU_File = $HOME.'/_mru_files'
let MRU_Max_Entries = 100
let MRU_Add_Menu = 1
let MRU_Max_Menu_Entries = 20
let MRU_Use_Current_Window = 0
let MRU_Include_Files = '\.vue$\|\.css$\|.php$\|.html$\|.js$'
let MRU_Auto_Close = 1

let g:neocomplcache_enable_at_startup = 1
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neocomplcache_enable_auto_select = 1
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
let g:DisableAutoPHPFolding = 1

nmap <leader>f :MRU<CR>
nmap <leader>d :MBEbw<CR>

set mouse=a
set guifont=Monaco:h11:cANSI
"set guifontwide=幼圆:h12:cGB2312
set number
set tabstop=4
set shiftwidth=4
"set autoindent
"set smarttab
"set autoread
set history=50
set clipboard+=unnamed
setlocal modifiable
set showmatch
set nobackup
set nowrap             "不换行
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

imap <space> pumvisible() ? "\<C-n>" :neosnippet#expandable_or_jumpable() ?<Plug>(neosnippet_expand_or_jump)" : "\<CR>"
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

au FileType php inoremap <buffer>= <c-r>=EqualSign('=')<CR>
au FileType php inoremap <buffer>> <c-r>=GtSign()<CR>
au FileType js inoremap <buffer>= <c-r>=EqualSign('=')<CR>
au FileType php inoremap <buffer>, ,<space>
"au FileType php setlocal dict+=$VIMFILES/dict/php.dict

function EqualSign(char)
if getline('.')[col('.') - 3] == '='
return "\<ESC>xi".a:char."\<SPACE>"
else
return "\<SPACE>".a:char."\<SPACE>\<ESC>a"
endif
endf
function GtSign()
	" || getline('.')[col('.') - 2] == '-'
	let char = '>'
	if getline('.')[col('.') - 3] == '='
		return "\<ESC>xi".char."\<SPACE>"
	else
		return char
	endif
endf

autocmd vimenter * call ToggleNERDTreeAndTagbar()
"autocmd BufWritePre *.vue :/<script>/+1,/<\/script>/-1 !standard --fix --stdin

let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1

let g:DisableAutoPHPFolding = 1
let g:user_emmet_install_global = 0
" Ctrl + L            光标移当前行行尾
imap <C-l> <ESC>A
" Alt  + L            光标右移一格
imap <A-l> <ESC>la
vmap <C-c> "+y
nmap Y "+y
nmap P "+p
nmap <SPACE> :call ToggleNERDTreeAndTagbar()<CR>

let g:ctrlp_mruf_exclude = '*.bak|/temp/.*' " MacOSX/Linux, 
let g:ctrlp_mruf_include = '\.cpp$\|\.h$|\.php$'

function! ToggleNERDTreeAndTagbar()

NERDTreeToggle
TagbarToggle
  
endf
if has('win32')    
	au GUIEnter * simalt ~x
else    
	au GUIEnter * call MaximizeWindow()
endif 

function! MaximizeWindow()    
	silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction
",JavaScript,HTML
function! GernateCtags()
	silent execute '!'.g:tagbar_ctags_bin.' -R --languages=PHP --php-kinds=cfj --langmap=javascript:+.vue --exclude=node_modules '.getcwd()
endf
nmap <C-F12> :call GernateCtags()<CR>

function! CompleteQuote(quote)
    let ql = len(split(getline('.'), a:quote, 1))-1
    let slen = len(split(strpart(getline("."), 0, col(".")-1), a:quote, 1))-1
    let elen = len(split(strpart(getline("."), col(".")-1), a:quote, 1))-1
    let isBefreQuote = getline('.')[col('.') - 1] == a:quote

    if isBefreQuote
        return "\<Right>"
    elseif '"'==a:quote && "vim"==&ft && 0==match(strpart(getline('.'), 0, col('.')-1), "^[\t ]*$")
        " for vim comment.
        return a:quote
    elseif "'"==a:quote && 0==match(getline('.')[col('.')-2], "[a-zA-Z0-9]")
        " for Name's Blog.
        return a:quote
    elseif (ql%2)==1
        " a:quote length is odd.
        return a:quote
    elseif ((slen%2)==1 && (elen%2)==1 && !isBefreQuote) || ((slen%2)==0 && (elen%2)==0)
        return a:quote . a:quote . "\<Left>"
    else
        return a:quote . a:quote . "\<Left>"
    endif
endfunction
