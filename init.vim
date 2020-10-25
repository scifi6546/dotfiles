call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/syntastic'
  Plug 'rust-lang/rust.vim'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  call plug#end()"Config Section
  if (has("termguicolors"))
	   set termguicolors
   endif
   syntax enable
   colorscheme dracula
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
   set statusline+=%{SyntasticStatuslineFlag()}
   set statusline+=%*

   let g:syntastic_always_populate_loc_list = 1
   let g:syntastic_auto_loc_list = 1
   let g:syntastic_check_on_open = 1
   let g:syntastic_check_on_wq = 0
   set number
   let g:NERDTreeGitStatusUseNerdFonts = 1
