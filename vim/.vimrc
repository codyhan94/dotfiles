filetype plugin on
syntax on

" various stuff
set relativenumber
set title
set nobackup
set ruler
set scrolloff=3
set showmode
set showcmd
set wildmenu

" line width of 78 for some file types
autocmd bufreadpre,bufnewfile *.md setlocal textwidth=78
autocmd bufreadpre,bufnewfile *.lout setlocal textwidth=78

colorscheme desert

" color overlong lines
highlight ColorColumn ctermbg=black ctermfg=darkred guibg=red
execute "set colorcolumn=" . join(range(79, 256), ',')

" Highlight trailing whitespace
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

" tab stuffs
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:>.
autocmd filetype make set nolist

" searching
set incsearch
set ignorecase
set smartcase
set showmatch
set gdefault

" better pasting with F2
set pastetoggle=<F2>

" some key remaps
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <tab> %
vnoremap <tab> %

" write to readonly file
cmap w!! w !sudo tee %

" easy recording
nnoremap <Space> @q

" include abbreviations for c coding
ab iassert #include <assert.h>
ab ictype #include <ctype.h>
ab ierrno #include <errno.h>
ab ifloat #include <float.h>
ab ilimits #include <limits.h>
ab ilocale #include <locale.h>
ab imath #include <math.h>
ab isetjmp #include <setjmp.h>
ab isignal #include <signal.h>
ab istdarg #include <stdarg.h>
ab istddef #include <stddef.h>
ab istdint #include <stdint.h>
ab istdio #include <stdio.h>
ab istdlib #include <stdlib.h>
ab istring #include <string.h>
ab itime #include <time.h>

command Wmake w | make

" syntax for markdown files
au BufRead,BufNewFile *.md set filetype=markdown

" load pathogen
execute pathogen#infect()

