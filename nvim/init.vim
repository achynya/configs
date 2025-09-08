" --- Basic Settings ---
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set completeopt-=preview

" --- Plugins ---
call plug#begin()

" File tree + icons
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons.git'

" Colors
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" --- Theme ---
source ~/.local/share/nvim/plugged/awesome-vim-colorschemes/colors/iceberg.vim

" --- Keybindings ---
nnoremap <C-p> :PlugInstall<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

" --- Treesitter (syntax highlighting) ---
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
}
EOF
