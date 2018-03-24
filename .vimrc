set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
"状态栏插件
Bundle 'bling/vim-airline'
set laststatus=2
"代码语法检查插件
Plugin 'scrooloose/syntastic'
"自动缩进python代码
Plugin 'vim-scripts/indentpython.vim'
"缩进提示线
Plugin 'Yggdroot/indentLine'
"自动补全
Plugin 'Valloric/YouCompleteMe'
"显示变量函数名
Plugin 'majutsushi/tagbar'
let g:tagbar_auto_faocus=1
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"显示行号
set number
"设置fontsize
set guifont=Monaco:h14
"检测文件的类型
filetype on
"语法显示高亮
syntax on
"设置编码
set encoding=utf-8
"设置高亮当前行
set cursorline
"设置vim配色
set background=dark
"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
au vimenter *NERDTree
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
" 开启代码折叠功能
" 根据当前代码行的缩进来进行代码折叠
set foldmethod=indent 
set foldlevel=99
"将za快捷键映射到space空格键上
nnoremap <space> za
"将vim中的剪切板与系统剪切板联系起来
set clipboard=unnamed
"python PEP8
au BufNewFile,BufRead *.py set tabstop=4 |set softtabstop=4|set shiftwidth=4|set textwidth=79|set expandtab|set autoindent|set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2|set softtabstop=2|set shiftwidth=2
