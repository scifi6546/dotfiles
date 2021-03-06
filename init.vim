set guifont=Fira\ Code\ Nerd\ Font,\ Retina:h14

call plug#begin("~/.vim/plugged")
  " Plugin Section
"  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'rust-lang/rust.vim'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
      \ 'python': ['/usr/local/bin/pyls'],
      \ 'do': 'bash install.sh',
      \ }


  " (Optional) Multi-entry selection UI.
  Plug 'junegunn/fzf'
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  " Syntax sugestion
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
  call plug#end()"Config Section
let g:deoplete#enable_at_startup = 1
  " enable ncm1 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  "
  " IMPORTANT: :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect

  " NOTE: you need to install completion sources
  "                 to get completions. Check
  "                     " our wiki page for a list of sources:
  "                     https://github.com/ncm2/ncm2/wiki
                           Plug 'ncm2/ncm2-bufword'
                               Plug 'ncm2/ncm2-path'
  if (has("termguicolors"))
	   set termguicolors
   endif
   syntax enable
   let g:NERDTreeShowHidden = 1
   let g:NERDTreeMinimalUI = 1
   let g:NERDTreeIgnore = []
   let g:NERDTreeStatusline = ''

   " Automaticaly close nvim if NERDTree is only thing left open
   autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&b:NERDTree.isTabTree()) | q | endif
   " " Toggle
   nnoremap <silent> <C-b> :NERDTreeToggle<CR>
   syntax enable
   filetype plugin indent on
   set statusline+=%#warningmsg#
   set statusline+=%*

   set number
   let g:NERDTreeGitStatusUseNerdFonts = 1
   let g:rustfmt_autosave = 1
   nmap <c-a> :tabnew +:term <cr>

