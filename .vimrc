"=====================================================================
" 		@File 	: VIM RUN COM Configuration File
" 		@Author : Sasike Bandara Dissanayake
"=====================================================================

"<summary> 
"function : Install Plug
"<summary> 
function InstallPlug()
	" Install vim-plug if not found
	if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	endif

	" Run PlugInstall if there are missing plugins
	autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	  \| PlugInstall --sync | source $MYVIMRC
	\| endif
endfunction 

"<summary> 
"function : Get Operating System
"<summary> 
"function getOsType()
"endfunction 

call InstallPlug()

" Plug
" {
        call plug#begin('~/.vim/plugged')

        Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
        Plug 'scrooloose/nerdcommenter'
        Plug 'scrooloose/syntastic'
        Plug 'vim-scripts/mru.vim'
        Plug 'vim-airline/vim-airline'
        Plug 'simeji/winresizer'
        Plug 'vim-scripts/ZoomWin'
        Plug 'tmhedberg/SimpylFold'
        Plug 'godlygeek/tabular'
        Plug 'google/vim-searchindex'
        Plug 'ctrlpvim/ctrlp.vim'
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-repeat'         
        Plug 'chrisbra/csv.vim'
        Plug 'vim-scripts/RltvNmbr.vim'
        " Plug 'valloric/youcompleteme'          
        " Plug 'omnisharp/omnisharp-vim'  
        " Plug 'davidhalter/jedi-vim'            "awesome Python autocompletion with VIM
        " Plug 'mhinz/vim-signify'               "show diff with style
       
        "colorshcems
        Plug 'tomasr/molokai'
        Plug 'tomasiser/vim-code-dark'         
        Plug 'flrnprz/plastic.vim'
        Plug 'morhetz/gruvbox'
        Plug 'joshdick/onedark.vim'
        Plug 'jonathanfilip/vim-lucius'
        " Plug 'nanotech/jellybeans.vim'
        Plug 'nanotech/jellybeans.vim'
        Plug 'sonph/onehalf'
        " Plug 'flazz/vim-colorschemes'
        "
        " sql clients
        Plug 'vim-scripts/dbext.vim'
        "Plug 'tpope/vim-dadbod'
        "Plug 'cosminadrianpopescu/vim-sql-workbench'

        Plug 'mbbill/fencview'                  " filetype encoding detect

        call plug#end()
" }

" GeneralSettings
" {
        set nocompatible                        " unset vim compatible mode
        set secure                              " disable unsafe commands in local .vimrc

        "file related settings
        "filetype off                           " disable file type detection for keeps the flags for plugins
        filetype on                             " filetype detection on
        filetype plugin on                      " filetype plugin on 
        filetype indent on                      " filetype indent on 
        syntax on
        set autochdir                           " change directory to where current file lies
        set noswapfile                          " reset swap file this will delete the swap file for current buffer
        set autoread                            " autodectect chages of files outside of vim
        set autoindent                          " auto indent on
        set smartindent                         " set smart indentation on
        set textwidth=0                         " set maximum text width can insert
        " set wrapmargin=0                      " wrap margin
        set background=dark                     " set background dark
        set mousehide                           " set mouse hide when typing 
        set noerrorbells                        " disable error bell noise
        set vb t_vb=                            " disable beep and flash 
        " set ignorecase                        " set ignore case
        set nu
        set rnu
        set noic                                " set noignore case
        let mapleader =","                      " change map leader
"        if &t_Co > 2 || has("gui_running")
"          set hlsearch                          " switch on highlighting the last used search pattern.
"        endif
"        set tabstop=4 shiftwidth=4 expandtab 
"        set smarttab 
"        " "Enabling this will make the tab key (in insert mode) insert spaces or tabs
"        " "to go to the next indent of the next tabstop
"        " "when the cursor is at the beginning of a line (i.e. the only preceding characters are whitespace).
"        
"        " set foldenable                        " enable foldability 
"        " set foldmethod=syntax                 " foldmethod set to syntax
"        set nofoldenable                        " dont fold at startup  
"
"        " attempt to create the ~/.vim_backup each time you start vim. If it already exists,
"        " silent !mkdir $HOME/VimTemp > /dev/null 2>&1
"        " !mkdir $HOME\VimTemp  &2>  $HOME\vimrc_error.txt
"        set backupdir =C:\Users\m10528\VimTemp  " set backup dir
"        "
"        " set nobackup
"        " set nowritebackup
"        " inoremap <CR><CR> <ESC>               " enter instead of ESC
"        
"        source $VIMRUNTIME/mswin.vim
"        behave mswin
"        
"" }
"
"" GuiOptions
"" {
"        set guioptions=c                       " use console dialogs
"        set guioptions+=e                      " use gui tabs
"        set guioptions+=g                      " greyout inactive menuitems
"        set guioptions-=m                      " hide menubar
"        set guioptions-=T                      " hide toolbar
"        set guioptions+=r                      " righthand scrollbar is always present
"        set guioptions+=L                      " for vsplits lefthand scrollbar is present
"        set number                             " set normal line numbering
"
"        " "font settings
"        if has('win32')
"          " Windows逕ｨ
"          set guifont=MS_Gothic:h10:cSHIFTJIS 
"          " set guifont=MS_Mincho:h10:cSHIFTJIS
"
"        elseif has('x11')
"          set guifont=inconsolata-g\ 9       
"        endif
"
"        set encoding=utf-8
"        set fileencodings=ucs-bom,sjis,utf-8,default
"        set langmenu=en_US.UTF-8              " sets the language of the menu (gvim)
"        " set encoding=cp1250                 " this recognize the ALT+J as e instead of ﾄで・
"
"" }
"
" Colorscheme_settings
" {
        colorscheme molokai
        " colorscheme gruvbox 
        " colorscheme codedark 
        " colorscheme kalisi
 
        " "other schemes
        " colorscheme plastic
        " colorscheme marslo
        " colorscheme solarized
        " colorscheme sunburst
        " colorscheme kalisi
        " colorscheme jellybeans
        " colorscheme hybrid
        " colorscheme solarized 
        " colorscheme monokai
        " colorscheme kolor
        " colorscheme codedark 
        " colorscheme molokai
        " colorscheme elflord 
        "
        " let g:rehash256 = 1
        " colorscheme wombat256
        
        " let g:solarized_termcolors=256

        " let g:molokai_original = 1
        " let g:rehash256 = 1
        
        " let s:likedColorS = "lucid"
        " let s:likedColors = "wombat256"
        " let s:likedColors = "xoria256"

        " colorscheme monokai
        " colorscheme Gruvbox 
        " colorscheme wombat256  
        " colorscheme onehalf 
        " colorscheme xoria256
        " colorscheme solarized

        " set Visual selection color
        hi Visual  guifg=#000000 guibg=Orange gui=none
        hi Insert  guifg=#000000 guibg=Yellow gui=none

        " hi Visual  guifg=#000000 guibg=#FFFFFF gui=none
        " highlight Cursor guifg=Black guibg=Orange
        highlight iCursor guifg=Black guibg=GreenYellow
        highlight vCursor guifg=Black guibg=Red
        set guicursor=n-v-c:block-Cursor
        set guicursor+=i:ver100-iCursor
        set guicursor+=n-v-c:blinkon0
        set guicursor+=i:blinkwait10

        "test

" }  

 " KeyMappings
 " {
       " source _gvimrc
       nnoremap <Leader>ss :so $MYGVIMRC<CR>

       " start current directorry
       nnoremap <Leader>sd :!start .<CR>

       " "window movement mappings
       nnoremap <C-h> <C-w>h
       nnoremap <C-j> <C-w>j
       nnoremap <C-k> <C-w>k
       nnoremap <C-l> <C-w>l

       " "close this window
       noremap <silent> <Leader>ww :close<CR>

       " "close other windows
       noremap <silent> <Leader>jw:wincmd j<CR>:close<CR>
       noremap <silent> <Leader>kw:wincmd k<CR>:close<CR>
       noremap <silent> <Leader>hw:wincmd h<CR>:close<CR>
       noremap <silent> <Leader>lw:wincmd l<CR>:close<CR>

       " "mappings to switch between tabs
       "nnoremap th  :tabfirst<CR>
       "nnoremap tj  :tabnext<CR>
       "nnoremap tk  :tabprev<CR>
       "nnoremap tl  :tablast<CR>
       "
       "" >>tab navigation like firefox
       ""nnoremap <C-S-tab> :tabprevious<CR>
       "nnoremap <C-tab>   :tabnext<CR>
       "nnoremap <C-t>     :tabnew<CR>
       ""inoremap <C-S-tab> <Esc>:tabprevious<CR>i
       ""inoremap <C-tab>   <Esc>:tabnext<CR>i
       ""inoremap <C-t>     <Esc>:tabnew<CR>

       "" To Switch between currently open buffer and the previous one 
       "nnoremap <leader><leader> <c-^>
       ""if bufwinnr(1)
       ""map = to increase height and - key to decresase height
       "" map + <C-W>+
       ""map - <C-W>-
       ""endif

       ""copy to clip board mappings
       "map <C-c> "+y<CR>

       "replace_whole_area
       "{
       "
           "(R)eplace all
           nnoremap <leader>r :%s/\<<C-r><C-w>\>//g<left><left>

           "replace spaces with empty string
           " nnoremap <leader>tts :%s/ //g<left><left>
           " vnoremap <leader>tts :s/ //g<left><left>

           "replace 	 with empty string
           nnoremap <leader>tti :%s/	//g<left><left>
           vnoremap <leader>tti :s/	//g<left><left>

           "replace 	 with empty carriage return 
           nnoremap <leader>ttr :%s/	/<CR>/g<left><left>
           vnoremap <leader>ttr :s/	/<CR>/g<left><left>

           "replace spaces with empty string
           nnoremap <leader>tte :%s/ //g<left><left>
           vnoremap <leader>tte :s/ //g<left><left>

           "insert new line after , occurence 
           nnoremap <leader>ttc :%s/,/,\r/g<left><left>
           vnoremap <leader>ttc :s/,/,\r/g<left><left>

           " replace endof line with DD 
           nnoremap <leader>tt4 :%s/$/,/g<left><left>
           vnoremap <leader>tt4 :s/$/,/g<left><left>

           " replace first char in line with DD 
           nnoremap <leader>tt6 :%s/^/DD/g<left><left>
           vnoremap <leader>tt6 :s/^/DD/g<left><left>

           "replace left  
           nnoremap <leader>11 :%s/\v(.*)(<C-r><C-w>)(.*)/\1/<left><left>

           "replace right
           nnoremap <leader>22 :%s/\v(.*)(<C-r><C-w>)(.*)/\2/<left><left>
           "
           "keep middle
           nnoremap <leader>33 :%s/\v(.*)(<C-r><C->)(.*)/\3/<left><left>

           "keep 1,2
           nnoremap <leader>12 :%s/\v(.*)(<C-r><C-w>)(.*)/\1\2/<left><left>

           "keep 2,3
           nnoremap <leader>23 :%s/\v(.*)(<C-r><C-w>)(.*)/\2\3/<left><left>

           nnoremap <leader>gd :g/<C-r><C-w>/d
           vnoremap <leader>gd :g/<C-r><C-w>/d

           " use g! or V for not macthing lines
           nnoremap <leader>vd :v/<C-r><C-w>/d
           vnoremap <leader>vd :v/<C-r><C-w>/d

            " delete empty lines
           nnoremap <leader>gel :g/^$/d
           vnoremap <leader>gel :g/^$/d

           " concatenate lines between same line pattern
           nnoremap <leader>tjk :%v/^<C-r><C-w>/-1j!
           vnoremap <leader>tjk :v/^<C-r><C-w>/-1j!  

       "}

       "replace_current_line
       "{
           " TODO: confirm
           "
           " delete right 
           nnoremap <leader>sl :s/\v(.*)(<C-r><C-w>)(.*)/\1\2/<left><left>

           " delete left
           nnoremap <leader>sh :s/\v(.*)(<C-r><C-w>)(.*)/\2\3/<left><left>

           " delete except selected 
           nnoremap <leader>sk :s/\v(.*)(<C-r><C-w>)(.*)/\2/<left><left>

       "}
       "
       " tab untab visual selected box
       " vmap <Tab> >gv
       " vmap <S-Tab> <gv
       ":nnoremap <F5> :match StatusLineTerm /<C-R><C-W>/<CR>
 " }

 " Plugin    : 'scrooloose/nerdtree'
 " {
       let g:NERDTreeIgnore        = ['\.o$', '\.a$', '\.so$', '\.so.*$', '\.dpkg$', '\.rpm$', '\.obj$', '\.exe$', '\.d$','\.swp$', '\.git$', '\~$']

       " show bookmarks
       let NERDTreeShowBookmarks =1 

       " auto open NERDTre with vim startup
       " autocmd vimenter * NERDTree
       "let g:NERDTreeWinSize=20
       nmap <F7> :NERDTree<CR>
       " close vim if only NERDtree window is left
       autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
 " }

 " Plugin    : 'scrooloose/syntastic'
 " {
       " set statusline+=%#warningmsg#
       " set statusline+=%{SyntasticStatuslineFlag()}
       " set statusline+=%* 
       " let g:syntastic_always_populate_loc_list = 1
       " let g:syntastic_auto_loc_list = 1
       " let g:syntastic_check_on_open = 1
       " let g:syntastic_check_on_wq = 0
 " }

 " Plugin    :   'vim-scripts/mru.vim'
 " {
       let MRU_Window_Height =8                        " set height 
       "let MRU_Max_Entries = 1000                     " inclrese the number of files 
       "let MRU_Include_Files = '\.c$\|\.h$'           " Include specific files in MRU 
       "let MRU_Auto_Close = 0                         " disable autoclose of MRU window
       "let MRU_Max_Menu_Entries = 20                  " control No of files in MRU   
       "let MRU_Exclude_Files = '^c:\\temp\\.*'        " exclude files from MRU

       " "mapping
       nnoremap <silent> mr   :MRU<CR>
 " }

 " Plugin    :   'vim-airline/vim-airline'
 " {
       " "Automatically displays all buffers when there's only one tab open.
       let g:airline#extensions#tabline#enabled = 1  
       "show just the file name
       let g:airline#extensions#tabline#fnamemode = ':t'
       " let g:airline#extensions#tabline#buffer_idx_mode = 1

       " "airline synstasic intergration 
       " let g:airline#extensions#syntastic#enabled = 1

       " "mappings
       " TODO  : change mapping
       " disabled mapping since overlap mapping 
       " nmap <leader>1 <Plug>AirlineSelectTab1
       " nmap <leader>2 <Plug>AirlineSelectTab2
       " nmap <leader>3 <Plug>AirlineSelectTab3
       " nmap <leader>4 <Plug>AirlineSelectTab4
       " nmap <leader>5 <Plug>AirlineSelectTab5
       " nmap <leader>6 <Plug>AirlineSelectTab6
       " nmap <leader>7 <Plug>AirlineSelectTab7
       " nmap <leader>8 <Plug>AirlineSelectTab8
       " nmap <leader>9 <Plug>AirlineSelectTab9

 " }

 " Plugin    : 'simeji/winresizer'
 " {
       "let g:winresizer_vert_resize = 2
       "let g:winresizer_horiz_resize = 1
 " }

 " Plugin    : 'vim-scripts/ZoomWin'
 " {
       "TODO : configure
 " }

 " Plugin    : 'tmhedberg/SimpylFold'
 " {
       " "doc string for folded code
       let g:SimpylFold_docstring_preview=1
 " }

 " Plugin    : godlygeek/tabular'
 " {
       if exists(":Tabularize")
           nmap <Leader>ae :Tabularize /=<CR>
           vmap <Leader>ae :Tabularize /=<CR>
           nmap <Leader>a: :Tabularize /:\zs<CR>
           vmap <Leader>a: :Tabularize /:\zs<CR>
           nmap <Leader>al :Tabularize /,<CR>
           vmap <Leader>al :Tabularize /,<CR>
           nmap <Leader>ac :Tabularize /\/\/<CR>
           vmap <Leader>ac :Tabularize /\/\/<CR>
           nmap <Leader>as :Tabularize / <CR>
           vmap <Leader>as :Tabularize / <CR>
           nmap <Leader>add :Tabularize /-- <CR>
           vmap <Leader>add :Tabularize /-- <CR>
           nmap <Leader>ai :Tabularize /	<CR>
           vmap <Leader>ai :Tabularize /	<CR>

       endif
 " }

 " Plugin    : 'google/vim-searchindex'
 " {
       "display number of search matches & index of current match
 " }

 " Plugin    : 'ctrlpvim/ctrlp.vim'
 " {
       " https://vimawesome.com/plugin/ctrlp-vim-everything-has-changed
       " Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
       " Press <c-f> and <c-b> to cycle between modes.
       " Press <c-d> to switch to filename only search instead of full path.
       " Press <c-r> to switch to regexp mode.
       " Use <c-j>, <c-k> or the arrow keys to navigate the result list.
       " Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
       " Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
       " Use <c-y> to create a new file and its parent directories.
       " Use <c-z> to mark/unmark multiple files and <c-o> to open them.

       " TODO:
       
 " }

 " Plugin    : 'airblade/vim-gitgutter'
 " {
       " "preview
       "<leader>hp 

       " "stage
       "<leader>hs
       "nmap ghs <Plug>(GitGutterStageHunk)

       " "undo hunks
       "<leader>hu
       "nmap ghu <Plug>(GitGutterUndoHunk)

       " "cannot unstage hunks

       nmap ]h <Plug>(GitGutterNextHunk)
       nmap [h <Plug>(GitGutterPrevHunk)
 " }

 " Plugin    : 'tpope/vim-fugitive'
 " {  // git wrapper so awesome,it should be illegal
       " :Gwrite   -> Stage the current file to the index
       " :Gread    -> Revert current file to last checked in version
       " :Gremove  -> Delete the current file and the corresponding Vim buffer
       " :Gmove    -> Rename the current file and the corresponding Vim buffer
       " :Gstatus  -> Display current status
       " :Gcommit  ->  
       " :Gmerge
       " :Gpush
       " :Gfetch
       " :Gpull
       " :Gblame
       " :Ggrep    -> search work tree
       " :Gread    -> variant of git checkout --filename
       " :Gclog    -> 
       " :Gllog    -> load all prvious commits into quickfix or location list
       " :Gbrowse  -> open current file on the web
                   "#$:) this should be absolutely illeagal :) :)
       " :Git      -> for running any arbitary git command
 " }

 " Plugin    : 'tpope/vim-repeat'         
 " {
       "TODO: configure
 " }

 " Plugin  : 'chrisbra/csv.vim'
 " {
       map <leader>cd  :CSVDeleteColumn<CR>

 " }

 Plug 'vim-scripts/RltvNmbr.vim'
 " {
       "call RltvNmbr#RltvNmbrCtrl(1)
       ":RltvNmbr command command turns relative line numbering on.

       ":RltvNmbr! command turns relative line numbering off.
 " }

 " Plugin    : 'valloric/youcompleteme'       "code completion
 " {
        " won't load YouCompleteMe
        "let g:loaded_youcompleteme = 0 

        let g:enable_ycm_at_startup = 1
        "TODO: configure
        "mr
        "
        "YCM obsoletes the following Vim plugins because it has all of their features plus extra:
        " clang_complete
        " AutoComplPop
        " Supertab
        " neocomplcache
        "
        " "both libclang and clangd enabled. 
        " "clangd will be preferred by default 
        " "clangd enabled     : 1
        " "libclang preffered : 0
        " let g:ycm_use_clangd = 0

        " "autocomplete goes away when done with it
        let g:ycm_autoclose_preview_window_after_completion=1

        " "mapping for go to defenition
        map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

        "  One issue with the goto definition above is that VIM, by default, doesn窶冲 know
        " anything about virtualenv, 
        " so you have to make VIM and YouCompleteMe aware of your virtualenv 
        "python with virtualenv support
        
        " !TODO: gives an error 
        " pyVirtualEnvSupport
        " {
            " py << EOF
            " import os
            " import sys
            " if 'VIRTUAL_ENV' in os.environ:
              " project_base_dir = os.environ['VIRTUAL_ENV']
              " activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
              " execfile(activate_this, dict(__file__=activate_this))
            " EOF
        " }
        "
    let g:ycm_filetype_blacklist = {
                                    \ 'csv': 1
                                   \}

" }

" Plugin    : 'omnisharp/omnisharp-vim'
" {
        " set omnisharp_server path
         " let g:OmniSharp_server_path = 'C:\Users\m10528\vimfiles\omnisharp.http-win-x64\OmniSharp.exe'

        " Use the HTTP version of OmniSharp-roslyn  : 0
        " Use the stdio version of OmniSharp-roslyn : 1
        " let g:OmniSharp_server_stdio =  1

        " let g:OmniSharp_proc_debug = 1
        " let g:OmniSharp_loglevel = 'debug'
" }

" Plugin    : 'davidhalter/jedi-vim'
" {
        " "disable auto-initialization
        " let g:jedi#auto_initialization = 0

        " "set direction where the opens{left,right,top,bottom}
        "let g:jedi#use_splits_not_buffers = "left"

        " ":disable popup on like str. 
        " let g:jedi#popup_on_dot = 0

        " let g:jedi#goto_command = "<leader>d"
        " let g:jedi#goto_assignments_command = "<leader>g"
        " let g:jedi#goto_definitions_command = ""
        " let g:jedi#documentation_command = "K"
        " let g:jedi#usages_command = "<leader>n"
        " let g:jedi#completions_command = "<C-Space>"
        " let g:jedi#rename_command = "<leader>r"


        " "if no need of completion, but all the other features:
        " let g:jedi#completions_enabled = 0
        
" }

" Pluggin   : 'mhinz/vim-signify'
" {
        " "default updatetime 4000ms is not good for async update
        "set updatetime=100
" }

" Plugin    : 'scrooloose/nerdcommenter'
" {
        " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1

        " Use compact syntax for prettified multi-line comments
        let g:NERDCompactSexyComs = 1

        " Align line-wise comment delimiters flush left instead of following code indentation
        "let g:NERDDefaultAlign = 'left'

        " Set a language to use its alternate delimiters by default
        "let g:NERDAltDelims_java = 

        " Add your own custom formats or override the defaults
        let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

        " Allow commenting and inverting empty lines (useful when commenting a region)
        "let g:NERDCommentEmptyLines = 1

        " Enable trimming of trailing whitespace when uncommenting
        "let g:NERDTrimTrailingWhitespace = 1

        " Enable NERDCommenterToggle to check all selected lines is commented or not 
        "let g:NERDToggleCheckAllLines = 1

        ""Default mappings
        ""The following key mappings are provided by default (there is also a menu provided that contains menu items corresponding to all the below mappings):
        ""
        ""Most of the following mappings are for normal/visual mode only. The |NERDCommenterInsert| mapping is for insert mode only.
        ""
        ""[count]<leader>cc |NERDCommenterComment|
        ""
        ""Comment out the current line or text selected in visual mode.
        ""
        ""[count]<leader>cn |NERDCommenterNested|
        ""
        ""Same as cc but forces nesting.
        ""
        ""[count]<leader>c<space> |NERDCommenterToggle|
        ""
        ""Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
        ""
        ""[count]<leader>cm |NERDCommenterMinimal|
        ""
        ""Comments the given lines using only one set of multipart delimiters.
        ""
        ""[count]<leader>ci |NERDCommenterInvert|
        ""
        ""Toggles the comment state of the selected line(s) individually.
        ""
        ""[count]<leader>cs |NERDCommenterSexy|
        ""
        ""Comments out the selected lines with a pretty block formatted layout.
        ""
        ""[count]<leader>cy |NERDCommenterYank|
        ""
        ""Same as cc except that the commented line(s) are yanked first.
        ""
        ""<leader>c$ |NERDCommenterToEOL|
        ""
        ""Comments the current line from the cursor to the end of line.
        ""
        ""<leader>cA |NERDCommenterAppend|
        ""
        ""Adds comment delimiters to the end of line and goes into insert mode between them.
        ""
        ""|NERDCommenterInsert|
        ""
        ""Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
        ""
        ""<leader>ca |NERDCommenterAltDelims|
        ""
        ""Switches to the alternative set of delimiters.
        ""
        ""[count]<leader>cl |NERDCommenterAlignLeft [count]<leader>cb |NERDCommenterAlignBoth
        ""
        ""Same as |NERDCommenterComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
        ""
        ""[count]<leader>cu |NERDCommenterUncomment|
        ""
        ""Uncomments the selected line(s).
" }

" Plug 'vim-scripts/dbext.vim'
" {
" Connection Profiles
" -----------------------------
" You can create as many profiles as you like in your vimrc.  
" Each profile specifies various connection information.  Each buffer can be connected to a different database. 
" The plugin will automatically prompt the user for connection information.  
" If you have defined profiles in your vimrc, for ease of use,  you can choose from a numbered list.

" Adding connection profiles is the best way to use dbext, :h dbext.txt has lots of examples of different profiles for different databases.

     let g:dbext_default_profile_PG= 'type=PGSQL:user=postgres:passwd=alpRuslPssdev0:host=localhost:port=15432:dbname=alpenr_db'
     let g:dbext_default_profile = 'PG'

     " <- Predefined favourite connection information >
    let g:dbext_default_type = 'PGSQL'

    " <       - Default user id >
    let g:dbext_default_user = 'postgres'

    " < - Default password >
    let g:dbext_default_passwd ='alpRuslPssdev0' 

    " < - Default database to connect to >
    let g:dbext_default_dbname = 'alpenr_db'

    " < - Default host the server is running on >
    let g:dbext_default_host = '127.0.0.1'

    " < - Default port to connect to >
    let g:dbext_default_port = '15432'

"     augroup dbextExtras
        " autocmd!
        " autocmd User dbextPreConnection :echo 'dbextPreConnection fired'
        " autocmd User dbextPreConnection :DBSetOption 'dbname=alpenr_db'
        " autocmd User dbextPreConnection :DBSetOption 'host=localhost'
        " autocmd User dbextPreConnection :DBSetOption 'port=15432'
        " autocmd User dbextPreConnection :DBSetOption 'type=PGSQL::user=postgres:passwd=alpRuslPssdev0'
    " augroup END


     " let g:dbext_default_profile_myASA = 'type=ASA:user=DBA:passwd=SQL'
     " let g:dbext_default_profile_myASA = 'type=ASA:user=DBA:passwd=SQL'
     " let g:dbext_default_profile_mySQLServer = 'type=SQLSRV:integratedlogin=1:srvname=mySrv:dbname=myDB'
     " let g:dbext_default_profile_mySQL = 'type=MYSQL:user=root:passwd=whatever:dbname=mysql'
     " let g:dbext_default_profile_mySQL_DBI = 'type=DBI:user=root:passwd=whatever:driver=mysql:conn_parms=database=mysql;host=localhost'
     " let g:dbext_default_profile_myORA = 'type=ORA:srvname=zzz42ga:user=john:passwd=whatever'

" Assuming you work on many different projects, you can automatically have dbext choose the correct database connection profile by adding autocmds that use the filesystem path to choose the correct profile:

     " augroup project1
         " au!
         " " Automatically choose the correct dbext profile
         " autocmd BufRead */projectX/sql/* DBSetOption profile=myASA
     " augroup end

     " augroup project2
         " au!
         " " Automatically choose the correct dbext profile
         " autocmd BufRead */projectY/* DBSetOption profile=myORA
     " augroup end

" Or from the menu or the maps created you can choose a profile at any time.    
" }

"Plugin 'mbbill/fencview'                  " filetype encoding detect
"{
    "you may try to guess the file encoding by :FencView comman 
    " If you need fencview.vim to detect encoding of every file,
    " set g:fencview_autodetect option to 1 in your vimrc. This will slightly impact loading time, so it is disabled by default.
    let g:fencview_autodetect =0 
"}


" ProgLangSetting
" {
        "lang_py
        " {
            let python_highlight_all=1
            "TODO:config
        " }

        "lang_c
        " {
            "TODO:config
        " }

        "lang_cplus_plus
        " {
            "TODO:config
        " }

        "lang_java
        " {
            "TODO:config
        " }

        "lang_js
        " {
            "TODO:config
        " }

        "lang_node.js
        " {
            "TODO:config
        " }

        "lang_html
        " {
            "TODO:config
        " }

        "lang_xml
        "{
            " pretyyFormattingXML
            " {
                function! DoPrettyXML()
                  " save the filetype so we can restore it later
                  let l:origft = &ft
                  set ft=
                  " delete the xml header if it exists. This will
                  " permit us to surround the document with fake tags
                  " without creating invalid xml.
                  1s/<?xml .*?>//e
                  " insert fake tags around the entire document.
                  " This will permit us to pretty-format excerpts of
                  " XML that may contain multiple top-level elements.
                  0put ='<PrettyXML>'
                  $put ='</PrettyXML>'
                  silent %!xmllint --format -
                  " xmllint will insert an <?xml?> header. it's easy enough to delete
                  " if you don't want it.
                  " delete the fake tags
                  2d
                  $d
                  " restore the 'normal' indentation, which is one extra level
                  " too deep due to the extra tags we wrapped around the document.
                  silent %<
                  " back to home
                  1
                  " restore the filetype
                  exe "set ft=" . l:origft
                endfunction
                command! PrettyXML call DoPrettyXML()
            " }

            "autogroupXML 
            " {
                augroup XML
                autocmd!
                autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
                augroup END
            " }

        " }

"" }
"
"" OtherCustomFunctions
"" {
"        "TODO: config
"" }
"
"" references
"" {
"        " https://realpython.com/vim-and-python-a-match-made-in-heaven/
"        " #ditch the mouse
"        " http://vimcasts.org/
"        " https://www.openvim.com/
"        " http://vimdoc.sourceforge.net/
"        " http://learnvimscriptthehardway.stevelosh.com/
"        " Plugin 'jistr/vim-nerdtree-tabs'
"        " https://github.com/vim/vim-win32-installer/releases
"        " https://www.freecodecamp.org/news/vim-for-people-who-use-visual-studio-code/
"        " https://shapeshed.com/vim-statuslines/
"
"        "TODO
"        " automaticall resize current window
"        " autocomplte Valloric/YouCompletme
"        " install Plug 'w0rp/ale'
"        " Plug 'sukima/xmledit'
"        " number base converting
"        " hex,bin editing
"        " Plug 'vim-scripts/XML-Indent'
"        " Plug 'othree/xml.vim'
"        " Zoom in Zoom out
"
"" }
"
"""oldsettings
"
""<< Status Line Settings >>
""Set the status line options. Make it Show more information
""set laststatus=2
""set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"
"""<< Current Function Where Cursor Lies >>
""""Following function displays the current function where cursor lies
""nmap @@ :call CurrentFunc()<CR> 
""" side effect: register k and mark k will be changed)
"""_____________________________________________________________________________________
""func! CurrentFunc()
""  exec "normal mk"
""  " c-type code have remarkable definitions from other OO code.
""  let l:extension = expand("%:e")
""  if l:extension == "c"
""    exec "normal ][%b%b"
""  else
""    exec "?private\\|public\\|protected\\|procedure\\|function\\s\\+\.*("
""  endif
""  "TODO: maybe you need to open your closed fold at first
""  exec "normal v$\"ky`k"
""  exec "echo @k"
""endfunc " CurrentFunc
"""______________________________________________________________________________________
""
"""<< Searching Key Mappings >>
"""search word under cursor in all files
""map <F3> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
""
"""search word under cursor in .c files
""map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **/*.c" <Bar> cw<CR>
""
"""search word under cursor in .h files
""map <F5> :execute "vimgrep /" . expand("<cword>") . "/j **/*.h" <Bar> cw<CR>
""
"""search word under cursor in .prc files
""map <F6> :execute "vimgrep /" . expand("<cword>") . "/j **/*.prc" <Bar> cw<CR>
""
"""map <F5> :execute " grep -srnw --binary-files=without-match --exclude-dir=.git --exclude-from=exclude.list . -e " . expand("<cword>") . " " <bar> cwindow<CR> "external grep
""
""">> Search inside current funtion
"""<< Plugin :scopesearch.vim >>
"""<leader><[[>                          "search inside of the current function
"""<leader><[{                           "search inside of current block
"""<leader><\/>                          "selected text, or whatever text you enter, but only within the current function.
""
""
"""<< Pugin:QFEnter Settgings >>
"""let g:qfenter_open_map = ['<CR>', '<2-LeftMouse>']
"""let g:qfenter_vopen_map = ['<Leader><CR>']
"""let g:qfenter_hopen_map = ['<Leader><Space>']
""
"""<< Editing Related Mappings & Settings >>
"""<< Mappings under UTF-8 encoding ">>
""nnoremap <A-j> :m .+1<CR>==
""nnoremap <A-k> :m .-2<CR>==
""inoremap <A-j> <Esc>:m .+1<CR>==gi
""inoremap <A-k> <Esc>:m .-2<CR>==gi
""vnoremap <A-j> :m '>+1<CR>gv=gv
""
"""nnoremap <ﾃｪ> :m .+1<CR>==
"""nnoremap <ﾃｫ> :m .-2<CR>==
"""inoremap <ﾃｪ> <Esc>:m .+1<CR>==gi
"""inoremap <ﾃｫ> <Esc>:m .-2<CR>==gi
"""vnoremap <ﾃｪ> :m '>+1<CR>gv=gv
"""vnoremap <ﾃｫ> :m '<-2<CR>gv=gv
""
"
""
""">>Hide Menu Bar and Tool Bar
"":set guioptions-=m  "remove menu bar
"":set guioptions-=T  "remove toolbar
"""set scrollbind!                       "set scroll bars for windows
"""
"""window resize mappings
"""map <F9> :set lines+=5<CR>
""":map <F10> :set columns+=10<CR>
""
"""taglist settings
"""let Tlist_Use_Right_Window   = 1
""""nmap <F8> :TlistOpen<CR>
""
"""<< Quick fix settings >>
"""let g:jah_Quickfix_Win_Height = 4 " setting qfix window height
"""quick fix item open in seperate tab and force to open if item is available in currently open tab
""":set switchbuf+=usetab,newtab
""":set switchbuf+=newtab
"""To makesure quickfix window always occupy the full width
""
"""<< Plugin:tagbar settings" >>
""nmap <F8> :TagbarToggle<CR>
""
"""<< Plugin:EasyGrep Settings >>
""let g:EasyGrepWindowPosition = "botright"
""
"""<< Plugin:GoldenView.vim >>
"""let g:goldenview__enable_default_mapping = 1              " diable default mappings of GolcenView
"""let g:goldenview__enable_at_startup =0                    " remove goldenview from startup
"""
"""<< Plugin:Silver Searcher
""if executable('ag')
""  " Use ag over grep
""  set grepprg=ag\ --nogroup\ --nocolor
""
""  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
""  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
""
""  " ag is fast enough that CtrlP doesn't need to cache
""  let g:ctrlp_use_caching = 0
""endif
""nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>              " bind  K to grep Word under cursor
""
"""<< Plugin:Yet To Discover" >>
"""<<  Code Navigation Related Mappings >>
""noremap % v%                                               "show macthing braces
""
"""<<Plugin :NeoCompleteMe >>
""
""
"""<<Plugins temporaly disabled ">>
""
"""<< Plugin:Vim-Thematic >>
"""https://github.com/reedes/vim-thematic
"""let g:thematic#theme_name = 'pencil_dark'                 "Set an intial theme
""
"""let g:thematic#themes = {
"""\ 'bubblegum'  : { 'typeface': 'Menlo',
"""\                  'font-size': 18,
"""\                  'transparency': 10,
"""\                  'linespace': 2,
"""\                },
"""\ 'pencil_dark' :{ 'colorscheme': 'pencil',
"""\                  'background': 'dark',
"""\                  'airline-theme': 'badwolf',
"""\                  'ruler': 1,
"""\                  'laststatus': 0,
"""\                  'typeface': 'Source Code Pro Light',
"""\                  'font-size': 20,
"""\                  'transparency': 10,
"""\                  'linespace': 8,
"""\                },
"""\ 'pencil_lite' :{ 'colorscheme': 'pencil',
"""\                  'background': 'light',
"""\                  'airline-theme': 'light',
"""\                  'laststatus': 0,
"""\                  'ruler': 1,
"""\                  'typeface': 'Source Code Pro',
"""\                  'fullscreen': 1,
"""\                  'transparency': 0,
"""\                  'font-size': 20,
"""\                  'linespace': 6,
"""\                },
"""\ }
""
"""<< PLugins yet to discover >>
"""
"""vim gundo
"""https://github.com/sjl/gundo.vim
"""
"""<< OminiCPPComplete >>
""let OmniCpp_NamespaceSearch     = 1
""let OmniCpp_GlobalScopeSearch   = 1
""let OmniCpp_ShowAccess          = 1
""let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
""let OmniCpp_MayCompleteDot      = 1 " autocomplete after .
""let OmniCpp_MayCompleteArrow    = 1 " autocomplete after ->
""let OmniCpp_MayCompleteScope    = 1 " autocomplete after ::
""let OmniCpp_DefaultNamespaces   = ["std", "_GLIBCXX_STD"]
""" automatically open and close the popup menu / preview window
""au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
""set completeopt=menuone,menu,longest,preview
""
"""<< Excel>>
"""let g:zipPlugin_ext = '*.zip,*.jar,*.xpi,*.ja,*.war,*.ear,*.celzip,*.oxt,*.kmz,*.wsz,*.xap,*.docx,*.docm,*.dotx,*.dotm,*.potx,*.potm,*.ppsx,*.ppsm,*.pptx,*.pptm,*.ppam,*.sldx,*.thmx,*.crtx,*.vdw,*.glox,*.gcsx,*.gqsx'
"
"
