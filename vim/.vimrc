" detect OS
" Mac is 'Drawin', Ubuntu is 'Linux'
let os = substitute(system('uname'), "\n", "", "")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"""
" For UI
"""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'Yggdroot/indentLine'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kshenoy/vim-signature'

"""
" Git plugins
"""
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'

"""
" Tools
"""
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'wincent/command-t'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'junegunn/vim-easy-align'
Plugin 'yonchu/accelerated-smooth-scroll' " Smooth scroll with <C-D> <C-U>
Plugin 'jlanzarotta/bufexplorer'

Plugin 'sheerun/vim-polyglot'
Plugin 'hsanson/vim-android'

"""
" Tools
"""
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim', {'do' : 'make'}
Plugin 'Shougo/unite.vim'

"""
" For language completion
"""
Plugin 'majutsushi/tagbar'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plugin 'Valloric/YouCompleteMe'
Plugin 'artur-shaik/vim-javacomplete2'

"""
" Javascript
"""
Plugin 'ternjs/tern_for_vim' " autocompletion
Plugin 'pangloss/vim-javascript' " Syntax hilight
Plugin 'mxw/vim-jsx' " react native syntax
Plugin 'flowtype/vim-flow' " flow
Plugin 'eslint/eslint' " eslint

"""
" For doc: Markdown, OrgMode
"""
"Plugin 'suan/vim-instant-markdown'
Plugin 'jceb/vim-orgmode'

"""
" For languages
""" Plugin 'davidhalter/jedi-vim' " Python
Plugin 'fatih/vim-go', { 'tag': '*' }
Plugin 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plugin 'vim-syntastic/syntastic'

"""
" Mine
"""
Plugin 'eschao/vim-dict'

"""
" News
"""
Plugin 'ryanss/vim-hackernews'

"Plugin 'mattn/emmet-vim'
"Plugin 'SirVer/ultisnips'
"Plugin 'edkolev/promptline.vim'
"Plugin 'Shougo/vimfiler.vim'
"Plugin 'taglist.vim'
"Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plugin 'tpope/vim-fireplace', { 'for': 'clojure' }
"Plugin 'https://github.com/junegunn/vim-github-dashboard.git'
"Plugin 'jeetsukumaran/vim-buffergator'

" Add plugins to &runtimepath
call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Normal config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set nocompatible
set nu
set modeline
set shellslash
set visualbell
set errorbells
set ruler
set hlsearch incsearch

" line width
set wrap "Wrap lines
set cc=80
set textwidth=80

" Tab
set noexpandtab
set shiftwidth=2
set tabstop=2
set smarttab

" theme
syntax enable
set t_Co=256
set background=dark
colorscheme dracula
set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos,mac

" Set to auto read when a file is changed from the outside
set autoread
" set auto write
set autowrite

" Set fold
set foldenable
set foldmethod=manual
set foldcolumn=0
set foldlevel=99
set foldminlines=3
set foldnestmax=5
set foldlevelstart=1

" Wildmenu
set wildmenu
set wildmode=longest:full,full
set wildignore=*.o,*.class,*.jpg,*.png,*.jpeg

" Set leader key
let mapleader = "\<Space>"

" Fast saving
nmap <leader>w :w!<cr>

" Edit vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<cr>

" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Conceal
map <leader>cl :exec &conceallevel ? "set conceallevel=0" :
            \ "set conceallevel=1"<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setlocal ts=2 sw=2
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c setlocal omnifunc=ccomplete#Complete
"autocmd FileType java set omnifunc=ccomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete ts=4 sw=4

" For performance, turn off cursoline for php filetype
autocmd FileType php setlocal nocursorline foldmethod=manual
autocmd BufRead * normal zR

" Show me the overflow.
if has('syntax') && v:version >= 704
  call matchadd('ColorColumn', '\%' . &textwidth . 'v', 81)
endif

" Set the Vim command history size to a larger number.
set history=9999
set undolevels=9999

" Others
"set magic "Set magic on, for regular expressions
"set showmatch "Show matching bracets when text indicator is over them
"set mat=2 "How many tenths of a second to blink

" for better performance
set regexpengine=1
set cursorline
set nocursorcolumn
set norelativenumber
syntax sync minlines=128
syntax sync maxlines=256
set synmaxcol=100
set lazyredraw
set ttyfast

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>w <C-w>
nmap <leader>c :wq<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>tn :tabnew %<cr>
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove
nmap <leader>[ :tabprev<cr>
nmap <leader>] :tabnext<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoVim Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_host_prog = '/usr/bin/python'
let g:loaded_python_provider = 1
let g:python_host_skip_check = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Omincpp plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal omnifunc=syntaxcomplete#Complete
set nocp
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_NamespaceSearch = 1
let OmniCpp_DefaultNamespaces = ["std"]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left = 1
let g:tagbar_width = 40
let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nmap <leader>tg :Tagbar<cr>

" For Objective-C
let g:tagbar_type_objc = {
  \ 'ctagstype': 'objc',
  \ 'ctagsargs': [
    \ '-f',
    \ '-',
    \ '--excmd=pattern',
    \ '--extra=',
    \ '--format=2',
    \ '--fields=nksaSmt',
    \ '--options=' . expand('~/.vim/tags/objctags'),
    \ '--objc-kinds=-N',
  \ ],
  \ 'sro': ' ',
  \ 'kinds': [
    \ 'c:constant',
    \ 'e:enum',
    \ 't:typedef',
    \ 'i:interface',
    \ 'P:protocol',
    \ 'p:property',
    \ 'I:implementation',
    \ 'M:method',
    \ 'g:pragma',
  \ ],
 \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD tree explorer plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>ff :NERDTree<cr>
nmap <leader>fc :NERDTreeClose<cr>
let NERDTreeShowBookmarks = 1
let NERDTreeWinSize = 60

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Eclim settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Project part
"map <leader>ep :ProjectsTree <cr>

" LocateFile Part
"let g:EclimLocateFileDefaultAction='tabnew'
"map <leader>el :LocateFile <cr>

"map <leader>jc :JavaCorrect <cr>
"map <leader>jd :JavaDocComment <cr>
"map <leader>jv :Validate <cr>
"map <leader>ji :JavaImport <cr>
"map <leader>jm :JavaImportMissing <cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.mac_ycmd_conf.py'
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_ominfunc = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_auto_trigger = 0
"let g:loaded_python_provider = 1
nnoremap <leader>yl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>yg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>yi :YcmCompleter GoToInclude<CR>
nnoremap <leader>yy :YcmCompleter GetType<CR>
nnoremap <leader>yp :YcmCompleter GetParent<CR>
nnoremap <leader>yt :YcmCompleter GoTo<CR>

let g:ycm_error_symbol = 'E>'
let g:ycm_warning_symbol = 'W>'
nmap <leader>yd :YcmDiags<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ' :t'
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '40%' }
nnoremap <leader>fz :FZF<cr>
"nnoremap <leader>fb :Buffers<cr>
"nnoremap <leader>fh :History<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tmux
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('$TMUX')
    function! TmuxOrSplitSwitch(wincmd, tmuxdir)
        let previous_winnr = winnr()
        silent! execute "wincmd " . a:wincmd
        if previous_winnr == winnr()
            call system("tmux select-pane -" . a:tmuxdir)
            redraw!
        endif
    endfunction

    let previous_title = substitute(system("tmux display-message -p
                                    \ '#{pane_title}'"), '\n', '', '')
    let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
    let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

    nnoremap <silent> <M-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
    nnoremap <silent> <M-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
    nnoremap <silent> <M-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
    nnoremap <silent> <M-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
    map <M-h> <C-w>h
    map <M-j> <C-w>j
    map <M-k> <C-w>k
    map <M-l> <C-w>l
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter,BufRead,BufNewFile *.markdown,*.mdown,*.mkd,*.mkdn,README.md
            \ setf markdown

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nnoremap <leader>ee :Errors<CR>
nnoremap <leader>ec :lclose<CR>
nnoremap <leader>en :lnext<CR>
nnoremap <leader>ep :lprev<CR>


" For JSX
let g:syntastic_javascript_checkers = ['eslint']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Javascript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_flow = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack.vim & ag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimShell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimshell_prompt_expr =
\ 'escape(fnamemodify(getcwd(), ":~").">", "\\[]()?! ")." "'
let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+> '
nnoremap <leader>vs :VimShell<CR>
nnoremap <leader>vp :VimShellPop<CR>
nnoremap <leader>vt :VimShellTab<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gs :GundoShow<CR>
nnoremap <leader>gh :GundoHide<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow Parentheses
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Debug syntax
 map <F9> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
            \ . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
            \ . ">"<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>bn :bnext<CR>
"map <leader>bp :bprevious<CR>
nmap <leader>bl :buffers<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bw :bw<CR>
nmap <leader>bb :ls<CR>:buffer<Space>
nmap <leader>n :bnext<CR>
nmap <leader>p :bprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-javacomplete2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:JavaComplete_LibsPath = '/Users/chao/Software/android-sdk/platforms:
        \ /Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home'
let g:JavaComplete_SourcesPath = '/Users/chao/Software/android-sdk/sources'
let g:JavaComplete_ShowExternalCommandsOutput = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-android
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:gradle_path = '/usr/local/bin/gradle'
let g:android_sdk_path = '/Users/chao/Software/android-sdk'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ctrlp_types = ['fil', 'buf', 'mru']
nmap <leader>cp     :CtrlP<cr>
nmap <leader>m    :CtrlPMRUFiles<cr>
nmap <leader>b    :CtrlPBuffer<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffergator
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:buffergator_viewport_split_policy = 'B'
let g:buffergator_autoupdate = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set anti enc=utf-8
set guifont=Source\ Code\ Pro\ Light:h13
" disable scrollbar
set guioptions-=T
set guioptions-=r
set guioptions-=L

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown-preview
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_slow = 1
let g:instant_markdown_allow_unsafe_content = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command-T
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>ct :CommandT<cr>
let g:CommandTMaxFiles = 1000000
let g:CommandTSuppressMaxFilesWarning = 1
let g:CommandTFileScanner = 'watchman'
let g:CommandTInputDebounce = 50
let g:CommandTSmartCase = 1
let g:CommandTMaxCachedDirectories = 10

if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap = ['<ESC>', '<C-c>']
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" React Native
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Customization
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

function! ShowSpaces(...)
    let @/='\v(\s+$)|( +\ze\t)'
    let old_hlsearch = &hlsearch
    if !a:0
        let &hlsearch = !&hlsearch
    else
        let &hlsearch = a:1
    end

    return old_hlsearch
endfunction

nnoremap <F12> :call ShowSpaces(1)<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Online Bing Dictionary
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>lw :call dict#LookupCWord()<cr>
nnoremap <leader>lei :call dict#LookupEnglish()<cr>
nnoremap <leader>lci :call dict#LookupChinese()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent line for tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set listchars=tab:│\ ,
set list

