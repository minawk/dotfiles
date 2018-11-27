"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

" Vundle Plugin ------------------------ {{{
set nocompatible              " be iMproved, required
set encoding=utf-8
filetype off                  " required by Vundle

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'ervandew/eclim'

" Colorsheme
Plugin 'morhetz/gruvbox'
Plugin 'jnurmine/Zenburn'

" Live editing
Plugin 'jaxbot/browserlink.vim'

" Icon
Plugin 'ryanoasis/vim-devicons'

" My plugin
Plugin 'dkprice/vim-easygrep'
Plugin 'KabbAmine/lazyList.vim'

" Pipe to make vim database client
Plugin 'vim-scripts/dbext.vim'
Plugin 'NLKNguyen/pipe.vim' "required for mysql
Plugin 'NLKNguyen/pipe-mysql.vim'

" Fast coding
" Plugin 'lyuts/vim-rtags'
" Plugin 'greyblake/vim-preview'
Plugin 'mattn/emmet-vim' " For html and css
Plugin 'jiangmiao/auto-pairs'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
" Plugin 'tpope/vim-repeat' " Can repeat plugins actions
Plugin 'tpope/vim-commentary' " Comment easily. For html emmet can do the job
packadd! matchit " It ships with Vim. We just enable it.

" Status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Auto completion ------------- {{{
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info
let g:ycm_confirm_extra_conf = 0
let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'

Plugin 'davidhalter/jedi-vim' " Python autocompletion
let g:jedi#completion_enabled = 0

Plugin 'shawncplus/phpcomplete.vim'
let g:phpcomplete_parse_docblock_comments=1

Plugin 'ternjs/tern_for_vim' " For javascript

" }}}

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter' " Diff

" Syntax checker
Plugin 'nvie/vim-flake8'
let python_highlight_all = 1
Plugin 'w0rp/ale'
let g:ale_set_balloons = 1
let g:ale_sign_column_always = 0
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_enabled = 0

" Syntax and indentation
Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'itspriddle/vim-jquery'
" Plugin 'fedorenchik/qt-support.vim' " Qt syntax support
Plugin 'mxw/vim-jsx'
" let g:jsx_ext_required = 0
Plugin 'elzr/vim-json'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'StanAngeloff/php.vim'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'hail2u/vim-css3-syntax'
" Plugin 'groenewege/vim-less' " For LESS(dynamic CSS) syntax
" Plugin 'bfrg/vim-cpp-modern'
"Plugin 'octol/vim-cpp-enhanced-highlight'

"Plugin 'sheerun/vim-polyglot' " Many syntax useful, can cause problem on php filetype

" Code/Project navigation
Plugin 'tmhedberg/SimpylFold'
let g:SimplylFold_docstring_preview = 1
Plugin 'majutsushi/tagbar'      " Class/module browser
" Plugin 'vim-php/tagbar-phpctags.vim'
" let g:tagbar_phpctags_bin='~/.vim/bundle/tagbar-phpctags.vim'
" Plugin 'ludovicchabant/vim-gutentags'
" let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js']
" let g:gutentags_cache_dir = '~/.vim/gutentags'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/nerdtree'    " Project and file navigation
let NERDTreeIgnore=['\.__pycache__$','\.pyc$']
Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeWinSize = 25      " Set WinSize of nerdtree to 20.
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

" Plugin 'Valloric/MatchTagAlways'
let g:mta_filetypes = {'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1,'php' : 1}
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
call vundle#end()            " required
if has("autocmd")
filetype plugin indent on    " required
endif
" }}}

" Viminfo ---------------------- {{{
set viminfo='10,\"100,:20,%,n~/.viminfo

" For restoring last line for last editing
" See :h line(), :h '" for more info.
function! ResCur()
if line("'\"") <= line("$")
normal! g`"
return 1
endif
endfunction

augroup resCur
autocmd!
autocmd BufWinEnter * call ResCur()
augroup END
" }}}

" Mapleader and Maplocalleader---------------- {{{
let mapleader='-' " Mapping leader
let maplocalleader='\\' " Mapping localleader
" }}}

" Basic setting ------------------------------- {{{
" Plugins config
nnoremap <F8> :TagbarToggle<CR>
nnoremap <silent> <leader>t :CtrlPTag<cr><c-\>w
nnoremap <silent> <F10> :cclose<cr>
" nnoremap <silent> <F12> :!phpctags *.php<cr><cr>

syntax enable
colorscheme gruvbox "zenburn 
set background=dark
hi Normal guibg=NONE ctermbg=NONE
set number
set relativenumber
set showcmd
set laststatus=2
set noshowmode " Don't show mode, already shown by powerline plugin.
set mouse=n " Mouse only on normal mode.

set incsearch
set hlsearch
"set ignorecase 
set gdefault " Assume g by default at subsitute command

set autowrite " Autowrite file before move around buffer.

set list
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬

set autoindent
set smartindent
set expandtab

set updatetime=100 " Useful for gitgutter
set cursorline " No highlight on current line
set clipboard=unnamed " Enable system clipboard by default

" Undo file
set undofile " save undo for close
set undodir=$HOME/.vim/undo
set undolevels=1000 " How many undos
set undoreload=10000 " number of lines to save for undo

set foldlevel=99
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2

let g:html_indent_inctags="head,body,tbody"
let g:html_indent_style1 = "inc"
" }}}

" Basic Mapping ------------------------- {{{
" Python helping map "
nnoremap <silent> <leader>ph :!help.py <cword><cr>
" Youcompleteme mapping
nnoremap <leader>gt :YcmCompleter GoTo<cr>

" Mapping esc in insert mode
inoremap jk <esc>
onoremap jk <esc>
" To avoid caps lock error typing.

" Upper case current word.
nnoremap <leader>u mxviwU`x

"Editing .vimrc quickly
nnoremap <leader>ev :$tabnew $MYVIMRC<cr>
" Sourcing .vimrc quickly without restarting.
nnoremap <leader>sv :source $MYVIMRC<cr>

" Desactivate hlsearch temporatly.
nnoremap <silent> <c-l> :<c-u>nohlsearch<cr><c-l>
" Count match pattern
nnoremap <leader>cm :%s///gn<cr>
" NERDTree mapping
nnoremap <silent> <leader>f :NERDTreeFocus<cr>

" Mapping begin and end of line by H and L. onoremap mapping also pending command like d$.
" We can do now dL which is more easy to type.
onoremap H ^
nnoremap H ^
xnoremap H ^
onoremap L $
xnoremap L $
nnoremap L $

" Search mapping, to super magic search
nnoremap / /\v
nnoremap ? ?\v

" Mapping <c-p> on command line mode to like <up>
cnoremap <c-p> <up>

" Trailing whitespace
" Show as an error.
highlight badwhitespace term=bold ctermbg=blue guibg=blue
nnoremap <silent> <leader>w :match badwhitespace /\s\+$/<cr>
" Hide error highlight
nnoremap <silent> <leader><leader>w :match<cr>
" Delete trailing whispaces.
nnoremap <silent> <leader>W :%s/\s\+$//e<cr> 


" Enable ALE plugin
nnoremap <leader>ae :ALEEnable<cr>
" Disable ALE plugin
nnoremap <leader>ad :ALEDisable<cr>

" Quickfix moving
nnoremap <silent> [c :cprevious<cr>
nnoremap <silent> ]c :cnext<cr>
nnoremap <silent> [C :cfirst<cr>
nnoremap <silent> ]C :clast<cr>

" Saving as root
cnoreabbrev wsudo w !sudo tee % > /dev/null<cr>

" Tab mapping
augroup mapping_tab
autocmd!
autocmd TabLeave * let g:lasttab = tabpagenr()
" Go to the last active tab
nnoremap <silent> gl :execute "tabnext ".g:lasttab<cr>
vnoremap <silent> gl :execute "tabnext ".g:lasttab<cr>
augroup END

" Edit last buffer in vertical split.
nnoremap <leader>eb :execute "rightbelow vsplit " . bufname("#")<cr>

" Moving mapping, j/k move on display line and gk/gj move on real line.
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" Close up windows split
nnoremap <leader>ck <c-w>k:x!<cr>

" Toggle background
function! Tooglebg()
	if &l:background ==# 'dark'
		set background=light
	else
		set background=dark
	endif
endfunction
nnoremap <F9> :call Tooglebg()<cr>

" Add ; at end of line
nnoremap <silent> <buffer> <leader>; mqA;<esc>`q

" Mapping terminal
tnoremap <c-[> <C-W>N

" Follow file in new tab
nnoremap gF :tabnew <cfile><cr>

" Moving in insert mode only for right move.
inoremap <c-l> <end>
inoremap <c-j> <cr><esc>ko
" }}}

" Abbreviations ---------------------- {{{
inoreabbrev @@ minarandria@gmail.com
inoreabbrev ccopy Copyright 2018 Minawk, all rights reserved.
" }}}

" Autocmd and Filetype  -------------------- {{{
augroup mysql_filetype
	autocmd!
	autocmd BufNewFile,BufRead *.sql set filetype=mysql
	autocmd BufNewFile,BufRead *.sql set filetype=sql
augroup END

augroup global_filetype
	autocmd!
	autocmd FileType js,javascript,php,html,css,sql,mysql setlocal tabstop=2 softtabstop=2 shiftwidth=2 backspace=2
	autocmd Filetype html,javascript setlocal nowrap 
	autocmd FileType python setlocal foldmethod=indent textwidth=100
	autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType vb setlocal commentstring='\ %s
augroup END

augroup filetype_markdown
	autocmd!
	autocmd Filetype markdown onoremap <buffer> ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
	autocmd Filetype markdown onoremap <buffer> ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
" }}}
