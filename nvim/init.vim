" detect OS
" Mac is 'Drawin', Ubuntu is 'Linux'
let os = substitute(system('uname'), "\n", "", "")

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'taglist.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Search with your favorite tool
Plug 'mileszs/ack.vim'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
Plug 'kien/rainbow_parentheses.vim'

" Add plugins to &runtimepath
call plug#end()

" Normal config
set nocompatible
set nu
set modeline
set shellslash
set visualbell
set errorbells
set ruler
set hlsearch incsearch
filetype plugin indent on

" line width
set wrap "Wrap lines
set cc=80
set textwidth=80

" Tab
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

" theme
syntax enable 
set t_Co=256
set background=dark
colorscheme dracula
set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos,mac "Default file types

" Set to auto read when a file is changed from the outside
set autoread

" set auto write
set autowrite

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Fast saving
nmap <leader>w :w!<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc
"autocmd FileType python set omnifunc=pythoncomplete#Complete 
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS 
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags 
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP 
autocmd FileType c set omnifunc=ccomplete#Complete 
"autocmd FileType java set omnifunc=ccomplete#Complete 
autocmd FileType java set omnifunc=javacomplete#Complete 

" Show me the overflow.
if has('syntax') && v:version >= 704
  call matchadd('ColorColumn', '\%' . &textwidth . 'v', 81)
endif

" We fold when we need to, according to syntax.
set foldenable
set foldmethod=syntax
set foldcolumn=0
set foldlevel=0
set foldminlines=3
set foldnestmax=5
set foldlevelstart=1

" Wild Side & Completion
" Enable your wild side, take command completion completion up a notch.
" Allow for an interesting view when opening the command line menu.
set wildmenu wildmode=longest:full
set wildoptions=tagfile
if has('wildignore') && v:version >= 704 | set wildignorecase | endif

" Ignore a lot of stuff.
set wildignore+=*.swp,*.pyc,*.bak,*.class,*.orig
set wildignore+=.git,.hg,.bzr,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.svg
set wildignore+=build/*,tmp/*,vendor/cache/*,bin/*
set wildignore+=.sass-cache/*

" Set the Vim command history size to a larger number.
set history=9999
set undolevels=9999

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Others
set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoVim Python 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_host_prog = '/usr/bin/python'
let g:loaded_python_provider = 1
let g:python_host_skip_check = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>cs :CS find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cg :CS find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cc :CS find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ct :CS find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ce :CS find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cf :CS find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>ci :CS find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>cd :CS find d <C-R>=expand("<cword>")<CR><CR>
nmap <leader>co :CS open <C-R>=expand("<cword>")<CR><CR>

set csprg=/usr/bin/cscope
"set csprg=/usr/local/bin/cscope
if has("cscope")
    set csto=0
    set nocst
    set cscopeverbose
    set cscopetag
    if filereadable("cscope.out")
        "cscope add cscope.out
        "command -nargs=0 CS add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        "cscope add $CSCOPE_DB
    endif
endif

map <F12> :call Do_CsTag()<CR>
let g:iswindows=0
function Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "CS kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find `pwd` -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.hpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "CS add cscope.out"
        endif
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Omincpp plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal omnifunc=syntaxcomplete#Complete
"setlocal omnifunc=javacomplete#Complete
set nocp
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_NamespaceSearch = 1
let OmniCpp_DefaultNamespaces = ["std"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left = 1
let g:tagbar_width = 40
let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nmap <leader>tg :Tagbar<cr>

""" For Objective-C
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD tree explorer plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>en :NERDTree<cr>
nmap <leader>ec :NERDTreeClose<cr>
let NERDTreeShowBookmarks = 1
let NERDTreeWinSize = 100 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctags 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let defaultTags=getcwd()."/tags"
" let &tags=defaultTags

" function! Add_ClassPath() 
"    let defaultClassPathFile = getcwd()."/classpath.files"
"    if filereadable(defaultClassPathFile)
"        for line in readfile(defaultClassPathFile, '')
"            if (strlen(line) > 0)
"                call javacomplete#AddClassPath(line)
"            endif
"        endfor
"    endif
"endfunction

"map <F11> :call Add_ClassPath()<CR>
" call Add_ClassPath()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Eclim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Project part
map <leader>ep :ProjectsTree <cr>

" LocateFile Part
let g:EclimLocateFileDefaultAction='tabnew'
map <leader>el :LocateFile <cr>

map <leader>jc :JavaCorrect <cr>
map <leader>jd :JavaDocComment <cr>
map <leader>jv :Validate <cr>
map <leader>ji :JavaImport <cr>
map <leader>jm :JavaImportMissing <cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_ominfunc = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_auto_trigger = 0
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts=1
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '40%' }
nnoremap <leader>f :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fh :History<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-dict 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:dict_hosts = [
    \["dict.org", ["all"]],
    \["dict.mova.org", []],
\]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tmux 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter,BufRead,BufNewFile *.markdown,*.mdown,*.mkd,*.mkdn,README.md 
            \ setf markdown 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color shceme switch 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>nc :NextColorScheme<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack.vim & ag 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimShell 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>vs :VimShell<CR>
nnoremap <leader>vp :VimShellPop<CR>
nnoremap <leader>vt :VimShellTab<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gu :Gundo<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow Parentheses 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
