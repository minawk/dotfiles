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
set path+=**
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Colorsheme
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dracula/vim'

" Live editing
" Plugin 'jaxbot/browserlink.vim'
" let g:bl_pagefiletypes=['html', 'javascript', 'php', 'htmldjango']

" Icon
" Plugin 'ryanoasis/vim-devicons'

" My plugin
Plugin 'dkprice/vim-easygrep'
" Plugin 'KabbAmine/lazyList.vim'
" Plugin 'easymotion/vim-easymotion'

" Pipe to make vim database client
Plugin 'vim-scripts/dbext.vim'
Plugin 'NLKNguyen/pipe.vim' "required for mysql
Plugin 'NLKNguyen/pipe-mysql.vim'

" Fast coding
" Plugin 'lyuts/vim-rtags'
" Plugin 'greyblake/vim-preview'
Plugin 'mattn/emmet-vim' " For html and css
let g:user_emmet_settings={'javascript.jsx': {'extends':'jsx'}}
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
" Plugin 'wesQ3/vim-windowswap'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat' " Can repeat plugins actions
Plugin 'tpope/vim-commentary' " Comment easily. For html emmet can do the job
" Plugin 'godlygeek/tabular'
Plugin 'benmills/vimux'
Plugin 'mbbill/undotree'
packadd! matchit " It ships with Vim. We just enable it.

" Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 1

let g:tmuxline_preset = {
            \'a'    : '#S',
            \'b'    : '#W',
            \'c'    : '#H',
            \'win'  : '#I #W',
            \'cwin' : '#I #W',
            \'x'    : '%a',
            \'y'    : '#W %R',
            \'z'    : '#H'}
" Auto completion ------------- {{{
" Plugin 'mikelue/vim-maven-plugin'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/.ycm_extra_conf.py'
let g:EclimFileTypeValidate = 0
let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1 "get data from string and comments
let g:ycm_seed_identifiers_with_syntax = 1 "get data from syntax of language
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info
let g:ycm_confirm_extra_conf = 0
let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_stop_completion = ['<C-h>']
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_complete_in_comments = 1 " Completion in comments
" Typesciprt setting
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
"
" Plugin 'Shougo/echodoc.vim'
" if has('nvim')
"   Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plugin  'Shougo/deoplete.nvim'
"   Plugin 'roxma/nvim-yarp'
"   Plugin 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
Plugin 'davidhalter/jedi-vim' " Python autocompletion
let g:jedi#completion_enabled = 0
" Plugin 'jmcomets/vim-pony' " Support django project navigation
" Plugin 'tweekmonster/django-plus.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'fatih/vim-go'
" Plugin 'fisadev/vim-isort'
" Plugin 'tweekmonster/braceless.vim'
" autocmd FileType python BracelessEnable +indent
" Plugin 'python-mode/python-mode', { 'branch': 'develop' }

" Plugin 'shawncplus/phpcomplete.vim'
" let g:phpcomplete_parse_docblock_comments=1

" Plugin 'ternjs/tern_for_vim' " For javascript

" }}}

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter' " Diff

Plugin 'OmniSharp/omnisharp-vim'
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_server_stdio = 1
let g:ale_linters = { 'cs': ['OmniSharp'] }
Plugin 'Shougo/vimproc.vim'

" Syntax checker
Plugin 'nvie/vim-flake8'
let python_highlight_all = 1
Plugin 'w0rp/ale'
let g:ale_set_balloons = 1
let g:ale_sign_column_always = 1
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_enabled = 0
" let g:ale_completion_enabled = 1
" set omnifunc=ale#completion#OmniFunc

" Syntax and indentation
Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'peterhoeg/vim-qml'
Plugin 'tbastos/vim-lua'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-lua-ftplugin'
Plugin 'dag/vim-fish'
if &shell =~# 'fish$'
    set shell=sh
endif
" let g:lua_complete_omni = 1
" let g:lua_check_syntax = 1
" let g:lua_complete_dynamic = 1
" let g:lua_define_completion_mappings = 0

Plugin 'digitaltoad/vim-pug'
Plugin 'mustache/vim-mustache-handlebars' 
Plugin 'othree/html5.vim'

" Plugin 'posva/vim-vue'
Plugin 'jason0x43/vim-js-indent'
Plugin 'othree/javascript-libraries-syntax.vim'
" Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'maxmellon/vim-jsx-pretty'
" Plugin 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'branch': 'release/1.x',
"   \ 'for': [ 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown',
"     \ 'vue', 'lua', 'php', 'python', 'ruby', 'html', 'swift' ] }
Plugin 'Galooshi/vim-import-js'
" Plugin 'mxw/vim-jsx'

Plugin 'HerringtonDarkholme/yats.vim' " Typesciprt
" Plugin 'leafgarland/typescript-vim'
let g:jsx_ext_required = 0

" Plugin 'dart-lang/dart-vim-plugin'
" Plugin 'thosakwe/vim-flutter'

" Plugin 'elzr/vim-json'

" Plugin 'itspriddle/vim-jquery'
" Plugin 'fedorenchik/qt-support.vim' " Qt syntax support
" Plugin 'captbaritone/better-indent-support-for-php-with-html'
" Plugin '2072/PHP-Indenting-for-VIm'
" Plugin 'StanAngeloff/php.vim'
" Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less' " For LESS(dynamic CSS) syntax
" Plugin 'bfrg/vim-cpp-modern'
"Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'sheerun/vim-polyglot' " Many syntax useful, can cause problem on php filetype

" Code/Project navigation
" Plugin 'tmhedberg/SimpylFold'
let g:SimplylFold_docstring_preview = 1
Plugin 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/\__pycache__/*
let g:ctrlp_custom_ignore = 'bin$\|\.gradle$\|gradle$\|\.settings$\|bin$\|build\|tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor$\|.__pycache_\|.node_modules$\|dist$\|target$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=25
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
" let g:ctrlp_follow_symlinks=1
" let g:ctrlp_clear_cache_on_exit=1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Plugin 'majutsushi/tagbar'      " Class/module browser
" Plugin 'vim-php/tagbar-phpctags.vim'
" let g:tagbar_phpctags_bin='~/.vim/bundle/tagbar-phpctags.vim'
" Plugin 'ludovicchabant/vim-gutentags'
" let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js']
" let g:gutentags_cache_dir = '~/.vim/gutentags'

Plugin 'scrooloose/nerdtree'    " Project and file navigation
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeIgnore=['__pycache__','\.pyc$', 'node_module', 'ios']
let g:NERDTreeWinSize = 25      " Set WinSize of nerdtree to 20.
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

" To fix alt key mapping
" Plugin gvim-utils/vim-alt-mappings'
"Plugin 'ervandew/eclim'
" Plugin 'Valloric/MatchTagAlways'


" Snippets
" Track the engine.
Plugin 'SirVer/ultisnips'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-m>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" Currently, es6 version of snippets is available in es6 branch only
" ES2015 code snippets (Optional)
Plugin 'epilande/vim-es2015-snippets'
" " React code snippets
Plugin 'epilande/vim-react-snippets'
" Trigger configuration (Optional)
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'


" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"


let g:mta_filetypes = {'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1,'php' : 1}
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
call vundle#end()            " required
if has("autocmd")
    filetype plugin indent on    " required
endif
" }}}

" Viminfo ---------------------- {{{
"" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

if exists('$TMUX')
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

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
set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
set number
set relativenumber
set showcmd
set laststatus=2
set noshowmode " Don't show mode, already shown by powerline plugin.
set mouse=n " Mouse only on normal mode.
set synmaxcol=500 " Don't try to hightlight lines longer that 500 caracters
set pyxversion=3

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
set cursorline " highlight on current line
set clipboard=unnamed " Enable system clipboard by default

" Undo file
set undofile " save undo for close
set undodir=$HOME/.vim/undo
set undoreload=10000 " number of lines to save for undo
set undolevels=1000 " How many undos

set foldlevel=99
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2

set scrolloff=3       " Always show at least three lines below cursor
set mat=3             " Blink matching brackets for 3 tenths of a second
set visualbell t_vb=  " No Noise or bell


let g:html_indent_inctags="head,body,tbody"
let g:html_indent_style1 = "inc"
" }}}

" Basic Mapping ------------------------- {{{
"
" Easy moving line mapping
nnoremap <Leader>ss :sync syntax fromstart<CR>

" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

"" Tabularise shortcuts
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Git
" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" Search for merge conflict markers
nnoremap <silent> <leader>sgc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
" Grab a github link from current selection
vnoremap <leader>G :Gbrowse!<cr>

" Switch to last buffer
nnoremap <leader><tab> <c-^>

" Indent or outdent and maintain selection in visual mode
vnoremap >> >gv
vnoremap << <gv

" Python helping map "
nnoremap <silent> <leader>ph :!help.py <cword><cr>
" Youcompleteme mapping
nnoremap <leader>gt :YcmCompleter GoTo<cr>
nnoremap <leader>gT :YcmCompleter GetType<cr>
nnoremap <leader>gd :YcmCompleter GetDoc<cr>
nnoremap <leader>yf :YcmCompleter FixIt<cr>

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
nnoremap <silent> <leader>F :NERDTreeFind<cr>

" Mapping begin and end of line by H and L. onoremap mapping also pending command like d$.
" We can do now dL which is more easy to type.
onoremap H ^
nnoremap H ^
xnoremap H ^
onoremap L $
xnoremap L $
nnoremap L $

" Search mapping, to super magic search
" nnoremap / /\v
" nnoremap ? ?\v

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
cnoreabbrev xsudo x !sudo tee % > /dev/null

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
nnoremap <leader><leader>t :hi Normal guibg=NONE ctermbg=NONE<CR>
nnoremap <leader><leader>d :set background=dark<CR>

" Add ; at end of line
nnoremap <silent> <buffer> <leader>; mqA;<esc>`q

" Mapping terminal
tnoremap <c-[> <C-W>N

" Follow file in new tab
nnoremap gF :tabnew <cfile><cr>

" Moving in insert mode only for right move.
" inoremap <c-l> <end>
inoremap <c-j> <cr><esc>ko

" Make
nnoremap <silent><leader>m :make<cr>

" Autoread or edit
nnoremap <leader>r :bufdo :edit<cr>


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
    autocmd FileType javascript,typescript setlocal tabstop=4 softtabstop=4 shiftwidth=4 backspace=2
    autocmd FileType php,jsx,html,htmldjango,pug,vue,css,sql,mysql setlocal tabstop=2 softtabstop=2 shiftwidth=2 backspace=2
    autocmd Filetype html,htmldjango,pug,javascript setlocal nowrap 
    autocmd FileType python setlocal foldmethod=indent textwidth=100
    autocmd FileType vim setlocal foldmethod=marker
    " autocmd FileType javascript set formatprg=prettier\ --stdin
    " autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
    autocmd FileType vb setlocal commentstring='\ %s
    let g:vue_disable_pre_processors=1
    autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
    autocmd BufRead,BufNewFile *.vue syntax sync fromstart
augroup END

augroup filetype_markdown
    autocmd!
    autocmd Filetype markdown onoremap <buffer> ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    autocmd Filetype markdown onoremap <buffer> ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
" }}}

" Auto align when inserting `|`
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
