" .vimrc
       
" modules
call pathogen#infect()
call pathogen#helptags()

" saving folds
"au BufWinLeave *.* mkview
"au BufWinEnter *.* silent loadview

set tags=tags;
" file management
set autoread
set autochdir

" indentation
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

" searching
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

" text formatting
set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

" editor display
set relativenumber
set number          " Show line numbers.

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set colorcolumn=+1
set ttyfast
set splitbelow
set title

"set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

" command bar
set showcmd         " Show (partial) command in status line.
set wildmenu

" status bar
set laststatus=2
let g:airline_skip_empty_sections=1
let g:airline_section_z="%l/%L:%#__accent_bold#%v%#__restore__#"
 
" colors
colorscheme gruvbox
set background=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="medium"

 
set mouse=a         " Enable the use of the mouse.
 
" syntax highlighting
filetype plugin indent on
syntax on

" Solarize
" colorscheme solarized

nnoremap <F2> :NERDTreeToggle<CR>

"" Set up vim-session
"map <F3> :SaveSession<CR>
"map <F4> :OpenSession<CR>
":let g:session_autoload = "no"
":let g:session_autosave = "no"

" Emmet should only run on html and css
"let g:user_emmet_install_global = 0
"let g:user_emmet_leader_key="<Leader>"
"autocmd FileType html,css,php EmmetInstall

" Add filetype for arduino stuff
"au BufNewFile,BufRead *.ino setlocal ft=c

"" Configure vim slime
"let g:slime_target = "screen"
"let g:slime_default_config = {"sessionname": "VSlime", "windowname": "bash"}
"let g:slime_paste_file = "~/.slime_paste"
"let g:slime_dont_ask_default = 1
"let g:slime_no_mappings = 1

"" Configure mappings for slime
"xmap <F5> <Plug>SlimeRegionSend
"nmap <F5> <Plug>SlimeParagraphSend

" configure tagbar
nnoremap <F3> :TagbarOpenAutoClose<CR>
nnoremap <F4> :TagbarToggle<CR>

" configure syntastic
let g:syntastic_python_checkers=['flake8', 'python3']
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors=1
nnoremap <F5> :SyntasticReset<CR>
nnoremap <F6> :SyntasticCheck<CR>
nnoremap <F7> :let g:syntastic_java_javac_config_file=
    \systemlist("git rev-parse --show-toplevel")[0]
    \."/.syntastic_javac_config"<CR>
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
