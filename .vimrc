set nocompatible               " Be iMproved
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'molokai'

NeoBundle 'ldx/vim-indentfinder'
NeoBundle 'vim-scripts/IndentConsistencyCop'
NeoBundle 'mulianov/vim-addon-linux-coding-style'
NeoBundle 'mulianov/perdirvimrc'
NeoBundle 'mulianov/a.vim'

NeoBundle 'vim-scripts/ingo-library'
NeoBundle 'vim-scripts/EnhancedJumps'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'

NeoBundle 'sk1418/QFGrep'

NeoBundle 'brookhong/cscope.vim'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'scrooloose/syntastic'

NeoBundle 'Shougo/unite.vim',
NeoBundleLazy 'tacroe/unite-mark', {'autoload':{'unite_sources':'mark'}}
NeoBundleLazy 'Shougo/neomru.vim', {'autoload':{'unite_sources':
        \['neomru/file', 'neomru/dir']}}
NeoBundleLazy 'ujihisa/unite-locate', {'autoload':{'unite_sources':'locate'}}
NeoBundleLazy 'Shougo/unite-outline', {'autoload':{'unite_sources':'outline'}}
NeoBundleLazy 'tsukkee/unite-help', {'autoload':{'unite_sources':'help'}}
NeoBundleLazy 'thinca/vim-unite-history', { 'autoload' : { 'unite_sources' :
        \ ['history/command', 'history/search']}}
NeoBundleLazy 'osyo-manga/unite-filetype',
        \ { 'autoload' : {'unite_sources' : 'filetype', }}
NeoBundle 'joedicastro/unite-cmdmatch'


NeoBundle 'bling/vim-airline'
NeoBundleLazy 'vim-scripts/zoomwintab.vim', {'autoload' :
        \{'commands' : 'ZoomWinTabToggle'}}
NeoBundle 'mhinz/vim-startify'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'],
        \ 'autoload':{'commands':'Gitv'}}

NeoBundle 'takac/vim-hardtime'

NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'svermeulen/vim-easyclip'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'haya14busa/vim-easyoperator-line'
NeoBundle 'haya14busa/vim-easyoperator-phrase'
NeoBundle 'haya14busa/vim-smalls'
NeoBundle 'tComment'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'tpope/vim-repeat'
NeoBundleLazy 'tpope/vim-surround', '', 'same'
NeoBundleLazy 'sjl/gundo.vim', '', 'same', { 'autoload' : {
      \ 'commands' : 'GundoToggle'
      \ }}

NeoBundle 'vim-scripts/QuickFixCurrentNumber'
NeoBundle 'tomtom/quickfixsigns_vim'
NeoBundle 'bufkill.vim'

NeoBundle 'Shougo/vimproc', {
        \
        \ 'build' : {  'unix' : 'make -f make_unix.mak'
        \ }}

NeoBundle 'Shougo/vinarise',
call neobundle#config('vinarise', {
        \ 'lazy' : 1, 'autoload' : { 'commands' : 'Vinarise',
        \ }})
call neobundle#end()

filetype on                  " required!
filetype plugin on
filetype plugin indent on     " required!

syntax on               " Влючить подстветку синтаксиса

" Installation check.
NeoBundleCheck

set guifont=Liberation\ Mono\ for\ Powerline\ 11
set mousemodel=popup
set list                                "Отображаем табуляции и конечные пробелы...
set listchars=tab:→→,trail:⋅,extends:▸,trail:‽,eol:↵,precedes:↶
set list!
set ttyfast
set shortmess+=tToOI
set nocompatible        " Включаем несовместимость настроек с Vi
set ruler               " Показывать положение курсора всё время
set showcmd             " Показывать незавершённые команды в статусбаре
set incsearch           " Поиск по набору текста (очень полезная функция)
set hlsearch            "
set novisualbell        " Выключаем надоедливый "звонок"
set t_vb=
set mouse=a             " Поддержка мыши
set mousemodel=popup
set termencoding=utf-8  " Кодировка текста по умолчанию
set hidden              " Не выгружать буфер, когда переключаемся на другой
set ch=1                " Сделать строку команд высотой в одну строку
set mousehide           " Скрывать указатель мыши, когда печатаем
set autoindent          " Включить автоотступы
set laststatus=2        " Always have a status line
set smartindent         " Включаем "умные" отспупы ( например, автоотступ после {)
set sessionoptions=curdir,buffers,tabpages " Опции сесссий
set confirm             " Confirm certain operations
set backspace=indent,eol,start whichwrap+=<,>,[,] " Allow backspace over everything
set statusline=%<%f%h%m%r\ %=\ %l-%v\ %P
set whichwrap=b,s,<,>,[,]
set nowrap              " Do not wrap long lines
set sidescroll=1        " Scroll only one column when typing text wider than the screen
set incsearch           " Incremental search
set wildmenu            " Bring a list of filenames when <tab> is pressed
set wildmode=list:longest,full " Shows all the options
set wildignore+=*.sw? " Vim swap files
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~ " Backup files
set wildignore+=*.ko,*.mod.c,*.order,modules.builtin   " Vim swap files
set ruler               " Always the display the current line and column
set wrapscan            " Wrap while searching for patterns
set virtualedit=all     " Allow editing in out-of-text area
set nostartofline       " Keep the cursor in the same column
set winaltkeys=no       " Disable menu accelerators
set guioptions-=m       " Remove menu
set guioptions-=T       " Remove toolbar
set guioptions-=e       " Remove GUI tabs
set guioptions-=r       " Remove ruller
set guioptions-=R
set guioptions-=l
set guioptions-=L       " Remove ruller
set guioptions+=c       " console dialogs for simple choices
set guioptions-=b
set guioptions-=F
set cursorline
set undofile                        " Enable persistent undo
set undodir=$HOME/.vim/undo         " Set the persistent undo directory
set backupdir=$HOME/.vim/backup     " Set the backup directory
set dir=$HOME/.vim/swap             " Set the swap directory
set undolevels=10000        " How many undos
set undoreload=10000        " number of lines to save for undo
set lazyredraw
set more
set magic                   "Easier regex
set autoread autowriteall
set updatetime=2000
" set noexpandtab         " ~Преобразование Таба в пробелы
" set shiftwidth=8        " Размер табулации по умолчанию
" set softtabstop=8
" set tabstop=8
set completeopt=longest,menuone
set cscopetag
set csto=0
set clipboard=unnamedplus

aug autosave
        au!
        au FocusLost,CursorHoldI,CursorHold,BufLeave * nested silent! :update
aug end

"" Enter key will simply select the highlighted menu item, just as <C-Y> does.
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"autocmd CompleteDone * pclos

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

aug reload_vimrc
    au!
    au BufWritePost $MYVIMRC nested source $MYVIMRC
aug END

let &colorcolumn=join(range(81,999),",")
au FileType text setlocal textwidth=80 "устанавливаем ширину в 80 знаков для текстовых файлов
au FileType c,cpp au BufWinEnter <buffer> let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1) "Подсвечиваем 81 символ и т.д.
au FileType strace setlocal nowrap nofoldenable nospell

" set verbose=9


"
let mapleader="\<Space>"

" Command-line mode keymappings
cnoremap <C-h>          <Left>
cnoremap <C-x>          <Del>
cnoremap <C-l>          <Right>

" Yank from the cursor to the end of the line, to be consistent with C and D
nnoremap Y y$
" map <A-y> "*y
map <A-p> "*p

nnoremap <A-d> YP

" keep visual selection on indent/deindent
vmap > >gv
vmap < <gv

" remap set mark
nnoremap gm m

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

noremap <PageUp> <Nop>
noremap <PageDown> <Nop>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" move line and blocks of lines
nnoremap <C-K> :m .-2<CR>==
nnoremap <C-J> :m .+1<CR>==
inoremap <C-J> <Esc>:m .+1<CR>==gi
inoremap <C-K> <Esc>:m .-2<CR>==gi
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv

inoremap <A-q> :close<CR>
vnoremap <A-q> :close<CR>
nnoremap <A-q> :close<CR>

nnoremap <Leader>`` :qa!<CR>

nmap <silent> <Leader>w :update<CR>
nmap <silent> <Leader>W :w<CR>

" save as god
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

" windows manipulation
nmap <silent> <C-h> <C-w><
nmap <silent> <C-l> <C-w>>
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>
nmap <silent> <A-h> <C-w>h
nmap <silent> <A-j> <C-w>j
nmap <silent> <A-k> <C-w>k
nmap <silent> <A-l> <C-w>l

nmap <silent><C-CR> :set paste<CR>gm`o<Esc>``:set nopaste<CR>
nmap <silent><S-CR> :set paste<CR>gm`O<Esc>``:set nopaste<CR>

nmap <C-q> :BD<cr>
vmap <C-q> <esc>:BD<cr>i
imap <C-q> <esc>:BD<cr>i

nmap <F1> :setlocal spell! spelllang=en_us<CR>
vmap <F1> <esc>:setlocal spell! spelllang=en_us<CR>
imap <F1> <esc>:setlocal spell! spelllang=en_us<CR>

map <F2> :bp<cr>
vmap <F2> <esc>:bp<cr>
imap <F2> <esc>:bp<cr>

map <F3> :bn<cr>
vmap <F3> <esc>:bn<cr>
imap <F3> <esc>:bn<cr>

map <A-F2> :tabprevious<cr>
vmap <A-F2> <esc>:tabprevious<cr>
imap <A-F2> <esc>:tabprevious<cr>

map <A-F3> :tabnext<cr>
vmap <A-F3> <esc>:tabnext<cr>
imap <A-F3> <esc>:tabnext<cr>

nmap <F4> :set list!<cr>
vmap <F4> <esc>:set list!<cr>
imap <F4> <esc>:set list!<cr>

nmap <F6> <Plug>(QuickFixCurrentNumberQPrev)
vmap <F6> <esc><Plug>(QuickFixCurrentNumberQPrev)
imap <F6> <esc><Plug>(QuickFixCurrentNumberQPrev)

nmap <A-F6> <Plug>(QuickFixCurrentNumberLPrev)
vmap <A-F6> <esc><Plug>(QuickFixCurrentNumberLPrev)
imap <A-F6> <esc><Plug>(QuickFixCurrentNumberLPrev)

nmap <F7> <Plug>(QuickFixCurrentNumberQNext)
vmap <F7> <esc><Plug>(QuickFixCurrentNumberQNext)
imap <F7> <esc><Plug>(QuickFixCurrentNumberQNext)

nmap <A-F7> <Plug>(QuickFixCurrentNumberLNext)
vmap <A-F7> <esc><Plug>(QuickFixCurrentNumberLNext)
imap <A-F7> <esc><Plug>(QuickFixCurrentNumberLNext)
"
nmap <F8> :w<cr>:make!<cr>
vmap <F8> <esc>:w<cr>:make!<cr>
imap <F8> <esc>:w<cr>:make!<cr>

" Replace mappings
nnoremap <Leader>\\ yiw:%s/<C-R>0/<C-R>0/gc<left><left><left>
nnoremap <Leader>\w yiw:%s/<C-R>0/<C-R>0/gc<left><left><left>
nnoremap <Leader>\W yiW:%s/<C-R>0/<C-R>0/gc<left><left><left>
nnoremap <Leader>\0 :%s/<C-R>0/<C-R>0/gc<left><left><left>
nnoremap <Leader>\s :%s///gc<left><left><left><left>

"jump to tag
nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>
"
map <Leader>z :ZoomWinTabToggle<CR>
"

let g:alternateNoDefaultAlternate = 1
 nnoremap <C-A> :A<CR>

"let g:easytags_include_members = 1
let g:easytags_dynamic_files = 2
let g:easytags_always_enabled = 1
"
" Fugitive {{{
nnoremap <Leader>gn :Unite output:echo\ system("git\ init")<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>go :Gread<CR>
nnoremap <Leader>gR :Gremove<CR>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gB :Gbrowse<CR>
nnoremap <Leader>gp :Git! push<CR>
nnoremap <Leader>gP :Git! pull<CR>
nnoremap <Leader>gi :Git!<Space>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gE :Gedit<Space>
nnoremap <Leader>gl :exe "silent Glog <Bar> Unite -no-quit
        \ quickfix"<CR>:redraw!<CR>
nnoremap <Leader>gL :exe "silent Glog -- <Bar> Unite -no-quit
        \ quickfix"<CR>:redraw!<CR>
nnoremap <Leader>gt :!tig<CR>:redraw!<CR>
nnoremap <Leader>gS :exe "silent !shipit"<CR>:redraw!<CR>
nnoremap <Leader>gg :exe 'silent Ggrep -i '.input("Pattern: ")<Bar>Unite
        \ quickfix -no-quit<CR>
nnoremap <Leader>ggm :exe 'silent Glog --grep='.input("Pattern: ").' <Bar>
        \Unite -no-quit quickfix'<CR>
nnoremap <Leader>ggt :exe 'silent Glog -S='.input("Pattern: ").' <Bar>
        \Unite -no-quit quickfix'<CR>
nnoremap <Leader>ggc :silent! Ggrep -i<Space>
" }}}

" Gitv {{{
let g:Gitv_WipeAllOnClose = 1
let g:Gitv_DoNotMapCtrlKey = 1
let g:Gitv_OpenHorizontal = 'auto'

autocmd FileType git set nofoldenable

nnoremap <silent> <leader>gv :Gitv --all<CR>
nnoremap <silent> <leader>gV :Gitv! --all<CR>
vnoremap <silent> <leader>gV :Gitv! --all<CR>
""}}}

let g:strip_whitespace_on_save = 1
let g:better_whitespace_filetypes_blacklist = ['unite','qf']


let g:surround_no_mappings = 1
let g:surround_100 = "\#ifdef \1variable: \1\r\#endif /* \1\1 */" " d
let g:surround_48 = "\#ifdef 0\r\#endif"  " 0

nmap q  <plug>SubstituteOverMotionMap
nmap gq <plug>G_SubstituteOverMotionMap
nmap qq <plug>SubstituteLine
xmap q  <plug>XEasyClipPaste
nmap Q  <plug>SubstituteToEndOfLine
nmap gQ <plug>G_SubstituteToEndOfLine

nmap ds  <Plug>Dsurround
nmap cs  <Plug>Csurround
nmap ys  <Plug>Ysurround
nmap yS  <Plug>YSurround
nmap yss <Plug>Yssurround
nmap ySs <Plug>YSsurround
nmap ySS <Plug>YSsurround
" xmap S   <Plug>VSurround
" xmap gS  <Plug>VgSurround


let g:cscope_silent = 1
let g:cscope_interested_files = '\.c$\|\.cpp$\|\.h$\|\.hpp'

"imap <c-space> <c-x><c-o>
nmap <C-space>u :call CscopeUpdateDB()<CR>
nnoremap <C-space>f :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <C-space>l :call ToggleLocationList()<CR>
"" nmap <C-space>u :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
""   \:!cscope -b -i cscope.files -f cscope.out<CR> :!ctags -R<CR> :cs reset<CR>

let g:syntastic_always_populate_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_disabled_filetypes=['py']
let g:syntastic_c_checkers = ['checkpatch','cppcheck']
let g:syntastic_check_on_open=1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_enable_signs=0
let g:syntastic_enable_balloons=0
let g:syntastic_echo_current_error=0

nmap <A-F8> :SyntasticCheck<CR>
imap <A-F8> <esc>:SyntasticCheck<CR>
vmap <A-F8> <esc>:SyntasticCheck<CR>


let g:EasyClipShareYanks = 1

let g:hardtime_default_on = 1
let g:hardtime_timeout = 1000

let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1

let g:yaifa_tab_width = 8
let g:yaifa_indentation = 1

map <Leader>x yy<Plug>TComment_<C-_><C-_>p
map <Leader>c <Plug>TComment_<C-_><C-_>
"

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<A-b>'

" prevent netrw loading
let g:loaded_netrwPlugin = 1


let g:vinarise_enable_auto_detect = 1
au FileType vinarise let g:airline_section_warning = ''

let g:unite_data_directory = $HOME.'/.vim/tmp/unite'
let g:unite_source_buffer_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_file_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_directory_mru_time_format = '(%d-%m-%Y %H:%M:%S) '

let g:unite_force_overwrite_statusline = 0
let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_command = 'pt'
let g:unite_source_grep_default_opts = '--nogroup --nocolor'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_encoding = 'utf-8'

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
        \'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))

let g:default_context = {
        \ 'direction' : 'botright',
        \ 'prompt_direction' : 'top',
        \ 'winheight' : 15,
        \ 'update_time' : 200,
        \ 'prompt' : '➜ ',
        \ 'enable_start_insert' : 0,
        \ 'enable_short_source_names' : 0,
        \ 'marked_icon' : '✓',
        \ 'ignorecase' : 1,
        \ 'smartcase' : 1,
        \ 'cursor_line_highlight': 'CursorLine',
        \ }

call unite#custom#profile('default', 'context', default_context)

" Custom mappings for the unite buffer
au FileType unite call s:unite_settings()
function! s:unite_settings()
       "Don't add parens to my filters
       let b:delimitMate_autoclose = 0
       " Enable navigation with control-j and control-k in insert mode
       imap <buffer> <C-j>   <Plug>(unite_select_next_line)
       imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

nnoremap <silent> <leader>f :<C-u>Unite -buffer-name=files -auto-resize -start-insert file_rec/async:! <cr>
nnoremap <silent> <leader>y :<C-u>Unite -buffer-name=yank history/yank<cr>
nnoremap <silent> <leader>b :<C-u>Unite -buffer-name=buffer -quick-match buffer<cr>
nnoremap <silent> <leader>o :<C-u>Unite -buffer-name=outline -vertical
        \ -winwidth=40 -direction=botright -toggle outline<cr>
nnoremap <silent> <leader>s :<C-u>Unite -buffer-name=grep grep:. <CR>
nnoremap <silent> <leader>d :<C-u>Unite -buffer-name=files -default-action=lcd neomru/directory<CR>
nnoremap <silent> <leader>m :<C-u>Unite -buffer-name=files neomru/file<CR>
nnoremap <silent> <Leader>; :Unite -silent -toggle grep:%::FIXME\|TODO\|NOTE\|XXX\|COMBAK\|@todo<CR>
cmap <c-o> <Plug>(unite_cmdmatch_complete)


let g:unite_source_menu_menus = {}
nnoremap [menu] <Nop>
nmap <Leader> [menu]

" menus menu
nnoremap <silent>[menu]u :Unite -silent -winheight=20 menu<CR>
       \ 'description' : ' admin git repositories  ⌘ [space]g', }

let g:unite_source_menu_menus.bookmarks = {
       \ 'description' : ' bookmarks & marks  ⌘ [space]s',
       \}
let g:unite_source_menu_menus.bookmarks.command_candidates = [
       \['▷ open marks', 'Unite mark'],
       \['▷ open bookmarks', 'Unite bookmark:*'],
       \['▷ add bookmark', 'UniteBookmarkAdd'],
       \]

let g:unite_source_menu_menus.grep = {
       \ 'description' : ' search files  ⌘ [space]a',
       \}
let g:unite_source_menu_menus.grep.command_candidates = [
       \['▷ grep (ag → ack → grep) ⌘ ,a', 'Unite -no-quit grep'],
       \['▷ find', 'Unite find'],
       \['▷ locate', 'Unite -start-insert locate'],
       \['▷ vimgrep (very slow)', 'Unite vimgrep'],
       \]
nnoremap <silent>[menu]a :Unite -silent menu:grep<CR>

let g:unite_source_menu_menus.searching = {
       \ 'description' : ' searchs inside the current buffer ⌘ [space]f',
       \}
let g:unite_source_menu_menus.searching.command_candidates = [
       \['▷ search line ⌘ ,f','Unite -auto-preview -start-insert line'],
       \['▷ search word under the cursor ⌘ [space]8', 'UniteWithCursorWord -no-split -auto-preview line'],
       \['▷ search outlines & tags (ctags) ⌘ ,t', 'Unite -vertical -winwidth=40 -direction=topleft -toggle outline'],
       \['▷ search marks', 'Unite -auto-preview mark'],
       \['▷ search folds', 'Unite -vertical -winwidth=30 -auto-highlight fold'],
       \['▷ search changes', 'Unite change'],
       \['▷ search jumps', 'Unite jump'],
       \['▷ search undos', 'Unite undo'],
       \['▷ search tasks ⌘ ,;', 'Unite -toggle grep:%::FIXME|TODO|NOTE|XXX|COMBAK|@todo'],
       \]
nnoremap <silent>[menu]f :Unite -silent menu:searching<CR>
let g:unite_source_menu_menus.registers = {
       \ 'description' : ' yanks, registers & history  ⌘ [space]i',
       \}
let g:unite_source_menu_menus.registers.command_candidates = [
       \['▷ yanks ⌘ ,i', 'Unite history/yank'],
       \['▷ commands (history) ⌘ q:', 'Unite history/command'],
       \['▷ searches (history) ⌘ q/', 'Unite history/search'],
       \['▷ registers', 'Unite register'],
       \]


let g:session_directory = '~/.vim/session'
let g:session_lock_directory = '/var/lock'
let g:session_autosave_periodic = 1
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
set sessionoptions-=help

nnoremap U :<C-u>GundoToggle<cr>

let g:gitgutter_enabled = 0
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_max_signs = 10000

nmap <F5> :GitGutterToggle<CR>
vmap <F5> <esc>:GitGutterToggle<CR>
imap <F5> <esc>:GitGutterToggle<CR>

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_smartcase = 1

map <Leader><Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
" nmap s <Plug>(easymotion-s2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" xmap / <Esc><Plug>(easymotion-sn)\v%V

let g:smalls_jump_keys_auto_show_min_input_length = 2
let g:smalls_jump_keys_auto_show = 1
let g:smalls_jump_keys_auto_show_timeout = 0.0
let g:smalls_blink_on_notfound = 0

nmap s <Plug>(smalls)
omap s <Plug>(smalls)
xmap s <Plug>(smalls)
nmap S <Plug>(smalls-excursion)
omap S <Plug>(smalls-excursion)
xmap S <Plug>(smalls-excursion)

omap <Leader>L <Plug>(easyoperator-line-select)
xmap <Leader>L <Plug>(easyoperator-line-select)
nmap d<Leader>L <Plug>(easyoperator-line-delete)
nmap p<Leader>L <Plug>(easyoperator-line-yank)

omap <Leader>p  <Plug>(easyoperator-phrase-select)
xmap <Leader>p  <Plug>(easyoperator-phrase-select)
nmap d<Leader>p <Plug>(easyoperator-phrase-delete)
nmap p<Leader>p <Plug>(easyoperator-phrase-yank)


let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_y = ''
let g:airline_section_x = ''
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

let g:airline_mode_map = {
     \ '__' : '-',
     \ 'n' : 'N',
     \ 'i' : 'I',
     \ 'R' : 'R',
     \ 'c' : 'C',
     \ 'v' : 'V',
     \ 'V' : 'V',
     \ '' : 'V',
     \ 's' : 'S',
     \ 'S' : 'S',
     \ '' : 'S',
     \ }

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" inoremap <c-x><c-k> <c-x><c-k>
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

function! s:QuickfixToggle()
       for i in range(1, winnr('$'))
               let bnum = winbufnr(i)
               if getbufvar(bnum, '&buftype') == 'quickfix'
                       cclose
                       lclose
                       return
               endif
       endfor
       copen
endfunction
command! ToggleQuickfix call <SID>QuickfixToggle()
nnoremap <silent> <Leader>q :ToggleQuickfix<CR>

nnoremap <silent><Leader>= :call ToggleRelativeAbsoluteNumber()<CR>
function! ToggleRelativeAbsoluteNumber()
       if !&number && !&relativenumber
               set number
               set norelativenumber
       elseif &number && !&relativenumber
               set nonumber
               set relativenumber
       elseif !&number && &relativenumber
               set number
               set relativenumber
       elseif &number && &relativenumber
               set nonumber
               set norelativenumber
       endif
endfunction

map <A-F1> :call ToggleRelativeAbsoluteNumber()<cr>
vmap <A-F1> <esc>:call ToggleRelativeAbsoluteNumber()<cr>
imap <A-F1> <esc>:call ToggleRelativeAbsoluteNumber()<cr>

aug ft_quickfix
        au!
        au FileType qf wincmd J
        au FileType qf setl nonumber nospell nowrap nocursorline nolist colorcolumn=
        au FileType qf nnoremap <silent> <buffer> q :q<CR>
        " automatically open qf
        " au QuickFixCmdPost    l* nested lwindow
        " au QuickFixCmdPost [^l]* nested cwindow
aug end

let g:quickfixsigns_classes = ['qfl', 'loc', 'marks']
let g:quickfixsigns_max = 10000
let g:quickfixsigns_balloon = 0

nmap <A-F4> :QuickfixsignsToggle<cr>
vmap <A-F4> <esc>:QuickfixsignsToggle<cr>
imap <A-F4> <esc>:QuickfixsignsToggle<cr>

nmap <A-F5>      :QuickfixsignsToggle<CR>
vmap <A-F5> <esc>:QuickfixsignsToggle<CR>
imap <A-F5> <esc>:QuickfixsignsToggle<CR>

"

function! RangeChooser()
       let temp = tempname()
       exec 'silent !ranger --choosefiles=' . shellescape(temp)
       if !filereadable(temp)
               redraw!
               " Nothing to read.
               return
       endif
       let names = readfile(temp)
       if empty(names)
               redraw!
               " Nothing to open.
               return
       endif
       " Edit the first item.
       exec 'edit ' . fnameescape(names[0])
       " Add any remaning items to the arg list/buffer list.
       for name in names[1:]
               exec 'argadd ' . fnameescape(name)
       endfor
       redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>

colorscheme molokai
hi ColorColumn  ctermbg=232 guibg=#222222
