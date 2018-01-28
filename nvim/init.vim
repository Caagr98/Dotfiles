scriptencoding utf-8
filetype off

call plug#begin('~/.cache/nvim')
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-user'
Plug 'Konfekt/FastFold'
Plug 'Konfekt/FoldText'
Plug 'lervag/vimtex'
Plug 'pbrisbin/vim-mkdir'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 's3rvac/AutoFenc'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-afterimage'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'wellle/targets.vim'
Plug 'vim-scripts/sudo.vim'
Plug 'w0rp/ale'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/JavaScript-Indent', {'for':['javascript', 'jsx']}
Plug 'mbbill/undotree'
Plug 'Shougo/denite.nvim'
Plug 'h1mesuke/unite-outline'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vito-c/jq.vim'

Plug 'artur-shaik/vim-javacomplete2', {'for':['java']}
Plug 'Shougo/echodoc.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-zsh', {'for':['zsh']}
Plug 'Shougo/neco-vim', {'for':['vim']}
Plug 'Shougo/neco-syntax'
Plug 'Vimjas/vim-python-pep8-indent', {'for':['python']}
Plug 'zchee/deoplete-jedi', {'for':['python']}
Plug 'xuhdev/vim-latex-live-preview', {'on': 'LLPStartPreview'}

" Plugin 'neovimhaskell/haskell-vim'
Plug 'itchyny/vim-haskell-indent', {'for':['haskell']}
Plug 'eagletmt/neco-ghc', {'for':['haskell']}
Plug 'eagletmt/ghcmod-vim', {'for':['haskell']}

Plug 'Caagr98/c98color.vim'
Plug 'Caagr98/c98ibus.vim'
Plug 'Caagr98/c98tabbar.vim'
Plug 'Caagr98/c98lilypond.vim'
call plug#end()

colorscheme c98color
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set mouse=
syntax on
filetype indent plugin on
" set encoding=utf-8
set cursorline
set autoindent
set showcmd noshowmode
set incsearch hlsearch inccommand=nosplit
set wildmode=longest:list
set suffixes+=.midi,.pdf,.mp3 "Lilypond
set suffixes+=.class "Java
set cmdheight=2
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set ignorecase smartcase
set fileformats=unix,dos,mac
set list listchars=tab:⟩\ ,trail:+,precedes:<,extends:>,space:·,nbsp:░
set number
set shortmess=asWAIc
set formatoptions=crqlmM1j
set autochdir
set scrolloff=7
set nowrap linebreak
set foldmethod=marker "foldcolumn=1
set directory=~/.vim-swap//
set backupdir=~/.vim-backup//
set undofile undodir=~/.vim-undo//
set updatetime=500
set notimeout
set nojoinspaces
set hidden
set signcolumn=yes

set shell=zsh

let g:polyglot_disabled = []
if !exists('g:deoplete#omni#input_patterns') | let g:deoplete#omni#input_patterns = {} | endif

let g:airline_powerline_fonts = 1
let g:airline_inactive_collapse = 1
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
let g:airline#extensions#whitespace#checks = ['trailing']
let g:airline#extensions#whitespace#trailing_format = 'Trailing@%s'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1
let g:ctrlp_root_markers = ['.vim_root']
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll|class)$',
\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
\ }

set showtabline=2

set completeopt=menu,menuone,preview,noselect
set splitbelow splitright
let g:deoplete#enable_at_startup = 1
inoremap <expr> <TAB> pumvisible() ? "<C-n>" : "<TAB>"
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <S-TAB> pumvisible() ? "<C-p>" : "<S-TAB>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <CR> pumvisible() ? "<C-y><CR>" : "<CR>"
map <NUL> <C-Space>
map! <NUL> <C-Space>
inoremap <expr> <C-Space> deoplete#mappings#manual_complete()
let g:deoplete#auto_complete_start_length = 1

let g:textobj_entire_no_default_key_mappings = 1
onoremap aE <Plug>(textobj-entire-a)
onoremap iE <Plug>(textobj-entire-i)
xnoremap aE <Plug>(textobj-entire-a)
xnoremap iE <Plug>(textobj-entire-i)

let g:autofenc_ext_prog_path='uchardet'
let g:autofenc_ext_prog_args=''
let g:autofenc_ext_prog_unknown_fenc='ascii/unknown'

 noremap H ^
 noremap L $
 noremap j gj
 noremap k gk
vnoremap . :norm.<CR>
 noremap <leader>v `<v`>
 noremap <leader>V `<V`>
nnoremap <silent> <C-L> :nohl<CR><C-L>
 noremap <leader>t :%s/\s+$//<CR>
nnoremap <leader>cc :call setreg(v:register, getreg(), "c")<CR>
nnoremap <leader>cl :call setreg(v:register, getreg(), "l")<CR>
nnoremap <leader>cb :call setreg(v:register, getreg(), "b")<CR>
    xmap <leader>a <Plug>(EasyAlign)
     map <leader>a <Plug>(EasyAlign)
     map <silent> <C-k> <Plug>(ale_previous_wrap)
     map <silent> <C-j> <Plug>(ale_next_wrap)
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]
     map <Space> <Plug>(easymotion-s)
     map <C-Space> <Plug>(easymotion-s2)

nnoremap gs :call <SID>SynStack()<CR>
function! <SID>SynStack()
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, ''name'')')
endfunc

map <ScrollWheelUp>     <C-Y>
map <S-ScrollWheelUp>   <C-Y>
map <ScrollWheelDown>   <C-E>
map <S-ScrollWheelDown> <C-E>
map!<ScrollWheelUp>     <C-O><C-Y>
map!<S-ScrollWheelUp>   <C-O><C-Y>
map!<ScrollWheelDown>   <C-O><C-E>
map!<S-ScrollWheelDown> <C-O><C-E>
noremap <PageUp>    <NOP>
noremap <PageDown>  <NOP>
noremap!<PageUp>    <NOP>
noremap!<PageDown>  <NOP>

hi LongLine cterm=italic
match LongLine /\%>120v\S/

let g:ale_linters = {}
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%:%severity%] %s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

let g:ale_linters.tex = ["chktex"]
let g:ale_tex_chktex_options = '-n 38' " 38: punc inside quote
call add(g:polyglot_disabled, 'latex')
let g:vimtex_imaps_enabled = 0
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete
let g:tex_flavor = "latex"

let g:c_gnu = 1

let g:ale_scss_scss_lint_args = '--config ~/dot/nvim/scss-lint.yml'

let g:ale_python_python_exec = 'python3'
let g:ale_python_flake8_args = '--select=E112,E113,E251,E303,E304,E401,E502,E703,E711,E712,E713,E714,E901,E902,E999,W391,W6,F'
let g:python_highlight_builtins=1
let g:python_highlight_exceptions=1
let g:deoplete#sources#jedi#show_docstring = 1
augroup Python
	au!
	au FileType python setlocal expandtab< tabstop< softtabstop< shiftwidth<
augroup END

silent! runtime! ale_linters/haskell/*.vim
call ale#linter#Define('haskell', {
\   'name': 'ghc-mod_',
\   'executable': 'ghc-mod',
\   'command': 'ghc-mod --map-file %s=%t check %s -g -Wno-type-defaults',
\   'callback': 'ale#handlers#haskell#HandleGHCFormat',
\})
call ale#linter#Define('haskell', {
\   'name': 'hlint_',
\   'executable': 'hlint',
\   'command': 'hlint --color=never --json -',
\   'callback': 'ale_linters#haskell#hlint#Handle',
\})
let g:ale_linters.haskell = ["ghc-mod_", "hlint_"]

let g:necoghc_enable_detailed_browse=1
let g:haskell_classic_highlighting=1
let g:haskell_enable_arrowsyntax=1
let g:haskell_enable_pattern_synonyms=1
let g:haskell_enable_quantification=1
let g:haskell_enable_recursivedo=1
let g:haskell_enable_static_pointers=1
let g:haskell_enable_typeroles=1
augroup Haskell
	au!
	au FileType haskell setlocal expandtab ts=2 sts=2 sw=2
	au FileType haskell syn match haskellFloat "\v<[0-9]+(\.[0-9]\+)?([eE][-+]?[0-9]+)?>"
augroup END

autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:JavaComplete_ClosingBrace = 0

autocmd FileType vim syn clear vimCommentString
