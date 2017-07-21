"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"
" Version: 
"       6.0 - 01/04/17 14:24:34 
"
" Blog_post: 
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" disabled plugins
let g:pathogen_disabled=['syntastic']

" pathogen infect before filetype stuff
execute pathogen#infect()

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing and sourcing .vimrc
nmap <leader>ev :e ~/.vimrc<cr>
nmap <leader>sv :source ~/.vimrc<cr>

" fast editing of .zshrc
nmap <leader>ez :e ~/.zshrc<cr>

" check out current file with p4 edit
nmap <F7> :! p4 edit %<cr>

" Map that will make the current filename with .pic.o replacing the suffix
map <F6> :call MakePic()<CR>

" This function will run make with a target created by appending pic.o to the
" root file name of the current buffer
function! MakePic()
    let s:picName = expand("%:t:r") . ".pic.o"
    let s:cmd = "make " . s:picName 
    execute s:cmd
endfunction

" pastetoggle
set pastetoggle=<F2>

" Use F3 to ROT13 the buffer contents (and undo it if used again)
map <F3> ggVGg?

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle NERDTree with ,f and open it at current file with ,v
nnoremap <Leader>f :NERDTreeToggle<cr>
nnoremap <silent> <Leader>v :NERDTreeFind<cr>

" close NERDTree automatically when we open a file
let NERDTreeQuitOnOpen=1

" automatically delete buffer of a file that we delete with NERDTree
let NERDTreeAutoDeleteBuffer=1

" open NERDTree when starting vim with no command line arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endifp


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlp customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" don't recurse too far
let g:ctrlp_max_depth=5

" c: current file, r: nearest ancestor root (git hg svn bzr), a: c if cwd is not
" a direct ancestor of current file's directory, w: cwd
let g:ctrlp_working_path_mode='wa'

" Sane Ignore For ctrlp from
" https://gist.github.com/leehambley/67de417c5c38f0ff8093
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" Show hidden files (or not)
let g:ctrlp_show_hidden=0

" only jump to windows in the current tab when switching buffers (if 'e'). use
" ctrl-t to open a buffer in a new tab.
let g:ctrlp_switch_buffer = 't'

" open in buffer mode (maybe something else?) [doesn't work because it overrides
" ctrl-p. just change it to buffer mode manually for now while we think of a
" better keybinding]
" noremap <C-S-p> :CtrlPBuffer<cr>

" Follow symlinks but ignore looped internal symlinks to avoid duplicates
let g:ctrlp_follow_symlinks=1

" unlimited number of files
let g:ctrlp_max_files=0

" include current file in match entries
let g:ctrlp_match_current_file = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => minibufexplorer customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" only open when we want to check buffers
let g:miniBufExplorerAutoStart=0

" toggle MBE and switch tabs relative to it
nnoremap <S-Tab> :MBEToggle<cr>
" use ctrlp for buffer fuzzy switching or just :b [..]<tab>
"noremap <C-Tab> :MBEbn<cr>
"noremap <C-S-Tab> :MBEbp<cr>
"noremap <C-Tab> :MBEbn<cr>:MBEOpen!<cr>
"noremap <C-S-Tab> :MBEbp<cr>:MBEOpen!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow parens customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn off by default but set up shortcut to toggle
let g:rainbow_active=0
nnoremap <silent> <leader>r :RainbowToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => multiple cursors customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make it more like sublime text (maybe)
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'
nnoremap <silent> <C-c> :call multiple_cursors#quit()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => delimitMate customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Better behavior when typing '{<cr>' or '{<space>'
let g:delimitMate_expand_space=1
let g:delimitMate_expand_cr=1
let g:delimitMate_jump_expansion=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=3

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=250

" 

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Add a bit extra margin to the left
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" try
    " colorscheme desert
" catch
" endtry

"set t_Co=256

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions-=e
    set guitablabel=%M\ %t
    colorscheme base16-tomorrow-night
else
    set background=light
    "let g:solarized_termcolors=256
    "colorscheme solarized
    colorscheme solarized
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
"map <c-space> ?

" Disable highlight when <leader><space> or <leader><cr> is pressed
map <silent> <leader><space> :noh<cr>
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Convenient way to move between tabs, mirrors iTerm and ST3
nmap <C-Left> gT
nmap <C-Right> gt
noremap <C-Tab> gt
noremap <C-S-Tab> gT

" Close the current buffer (slight modification to avoid closing tab)
"map <leader>bd :Bclose<cr>:tabclose<cr>gT
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  "set switchbuf=useopen,usetab,newtab
  " disable usetab so that we can have MBE per tab space properly
  set switchbuf=useopen
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line numbers
set number

" Remap VIM 0 to first non-blank character
"nmap 0 ^

" Remap H, L to beginning and end of line
nnoremap H ^
nnoremap L $
xmap H ^
xmap L $

" Map j and k to move up and down by visual lines
nmap j gj
nmap k gk
xmap j gj
xmap k gk

" Map fd to exit insert mode
inoremap fd <esc>

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction
