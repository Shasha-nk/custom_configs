"|-|	--- SHASHANK CUSTOM VIM CONFIG -	|-|"

"->	Colors -------------------------------------
"->	Misc ---------------------------------------
"->	Spaces & Tabs ------------------------------
"->	UI Layout ----------------------------------
"->	Searching ----------------------------------
"->	Folding ------------------------------------
"->	Line Shortcuts -----------------------------
"->	Leader Shortcuts ---------------------------
"->	Powerline ----------------------------------
"->	CtrlP --------------------------------------
"->	NERDTree -----------------------------------
"->	Syntastic ----------------------------------
"->	Launch Config ------------------------------
"->	Tmux ---------------------------------------
"->	MacVim -------------------------------------
"->	AutoGroups ---------------------------------
"->	Backups ------------------------------------
"->	Custom Functions ---------------------------


"	Colors -------------------------------------
		"colorscheme delek
		"set colorcolumn=80
		syntax enable
		filetype plugin indent on
		augroup vimrc_autocmds
		au!
		    autocmd BufRead * hi OverLength ctermbg=red ctermfg=white
								\ guibg=#592929
		    autocmd BufRead * match OverLength /\%81v.*/
		augroup END

		augroup git_commit
		au!
			autocmd FileType gitcommit setlocal spell textwidth=75
			autocmd FileType gitcommit set colorcolumn=76
		augroup END


		set nu
		set nrformats-=octal	"{Interpret octal as decimal when
								" incrementing numbers}
		set nocp				"{making vim not compatible with vi}
		set spell				"{Enable spell checking}
		set paste
		set title
		set visualbell
		set wildmenu
		set wildmode=longest:full,full
		set showcmd
		set showmode	"{show current mode at bottom}
		set autoindent
		set cindent
		set shiftwidth=4
		set softtabstop=4
		set tabstop=4
		set lazyredraw
		set encoding=UTF-8
		set incsearch
		set hlsearch
		set cursorline
		set splitbelow splitright
		hi cursorLine cterm=NONE ctermbg=194 ctermfg=black
			\ guibg=darkred guifg=white
		hi cursorColumn cterm=NONE ctermbg=darkred ctermfg=white
			\ guibg=darkred guifg=white

"   Doing font changes
	    if has("gui_gtk3")
			set lines=40 columns=140
			set guifont=consolas\ 11.5
	    endif

"	Mappings
		let NERDTreeMapOpenInTab='<ENTER>'
		nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"	Library paths
		let g:clang_library_path='/usr/lib/llvm-9/lib/libclang.so.1'

"	Automatically delete all trailing white spaces on save(:w)
		autocmd BufWritePre * %s/\s\+$//e

"Plugins to be installed
call plug#begin('~/.vim/plugged')

	Plug 'scrooloose/syntastic'
	Plug 'yggdroot/indentline'
	Plug 'scrooloose/nerdtree'
	Plug 'jistr/vim-nerdtree-tabs'
	Plug 'ryanoasis/vim-devicons'
	Plug 'scrooloose/nerdcommenter'
	Plug 'ryanoasis/vim-devicons'
	Plug 'kien/ctrlp.vim'
	Plug 'godlygeek/tabular'
	Plug 'junegunn/fzf'
	Plug 'junegunn/goyo.vim'
	Plug 'rip-rip/clang_complete'
	Plug 'vim-scripts/OmniCppComplete'
	Plug 'vim-scripts/pythoncomplete'
	Plug 'ervandew/supertab'
	Plug 'valloric/youcompleteme'

	Plug 'vim-scripts/taglist.vim'
	Plug 'vim-scripts/TaskList.vim'
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'enricobacis/vim-airline-clock'
	Plug 'mattn/emmet-vim'
	Plug 'honza/vim-snippets'
	Plug 'myusuf3/numbers.vim'
	Plug 'shougo/vimshell.vim'
	Plug 'vim-scripts/Conque-Shell'
	Plug 'megaannum/forms'
	Plug 'gotcha/vimpdb'
	Plug 'shougo/neocomplete.vim'

call plug#end()

"	YOUCOMPLETEME:
"		*	After installing plugin go inside YOUCOMPLETEME directory
"		*	and run install.py for clang and all languages support
"		*	./install.py --clangd-completer
"		*	./install.py --all

"	CTRLP:
"	CtrlP settings
		let g:ctrlp_match_window = 'bottom,order:ttb'
		let g:ctrlp_switch_buffer = 0
		let g:ctrlp_working_path_mode = 0
		let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
		let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
