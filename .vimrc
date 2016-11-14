"我的设置
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"定义快捷键的前缀<leader>
let mapleader=";"

"按键映射
".cpp和.h之间切换
nmap <tab> :A<CR> 
"子窗口显示.cpp和.h——垂直方向
nmap <s-tab> :AV<CR> 
"子窗口显示.cpp和.h——水平方向
"nmap <s-tab> :AS<CR> 
" 全文缩进
nmap == <Esc>gg=G
"行末添加注释
nmap // A<tab>//

nmap <Leader>q :q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>j %
nmap sp :e /home/kk/omnetpp-4.6/projects/SP/src 
" 依次遍历子窗口
"nnoremap ww <C-W><C-W>
" " 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" " 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" " 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" " 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
"ycm编译
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"配色方案
set background =dark
"colorscheme freya
colorscheme molokai
"colorscheme solarized

"显示设置
set laststatus=2 "总是显示状态栏
set ruler "显示光标当前位置
set number "显示行号
set cursorline "高亮显示当前行
set cursorcolumn "高亮显示当前列
set hlsearch "高亮显示搜索结果
set nowrap "禁止拆行
syntax enable "开启语法高亮
syntax on "允许用指定语法高亮配色方案替换默认方案

"显示中文帮助
set helplang=cn
set encoding=utf-8

"缩进设置
set expandtab "将制表符扩展为空格
set tabstop=4 "编辑时制表符占用空格数
set shiftwidth=4 "格式化时制表符占用空格数
set softtabstop=4 "让vim把连续数量的空格视为制表符

"实用设置
set confirm "在处理未保存或只读文件时，弹出确认
set nobackup "禁止生成临时文件
set noswapfile

"当文件被改动时自动载入"
set autoread
"允许使用鼠标"
set mouse=a
set selectmode=mouse
set dictionary=~/dic.txt
set wrap
filetype plugin indent on "自适应不同语言的智能缩进
set completeopt=longest,menu

"补全括号
inoremap () ()<Esc>i
inoremap {<CR> {<CR>}<Esc>O
"补全引号
inoremap "" ""<Esc>i
inoremap '' ''<Esc>i

inoremap <> <><Esc>i
inoremap [] []<Esc>i


"常用字符串映射
inoremap main main(int argc, char* argv[])<Esc>A
"inoremap CTRL- <Esc>A;
""""""""""""""""""""""""vundle""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'https://github.com/vim-scripts/vimprj.git'
"Plugin 'https://github.com/vim-scripts/indexer.tar.gz.git'
"来自：https://github.com/VundleVim/Vundle.vim


Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"我的插件（试用）
""""""""""""""vim-airline/vim-airline""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


""""""""""""""scrooloose/nerdtree""""""""""""""
Plugin 'scrooloose/nerdtree'


""""""""""""""freya""""""""""""""
Plugin 'freya'


""""""""""""""indent Guide 多层缩进""""""""""""""
Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'


"""""""""""""""YouCompleteMe""""""""""""""
Plugin 'Valloric/YouCompleteMe' 


"""""""""""""""STL-高亮""""""""""""""
Plugin 'https://github.com/Mizuchi/STL-Syntax.git'


""""""""""""""a.vim""""""""""""""
"用法: https://github.com/vim-scripts/a.vim.git
Plugin 'https://github.com/vim-scripts/a.vim.git'
call vundle#end()            " required
filetype plugin indent on    " required


"插件配置
"""""""""""""""YouCompleteMe""""""""""""""
" YCM 补全菜单配色
"
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5

" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

"error symbol
let g:ycm_error_symbol='>>'

"warning symbol
let g:ycm_warning_symbol='->'

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1

"the minimum number of characters that a completion candidate coming from
"the identifier completer must have to be shown in the popup menu（不会翻译）
let g:ycm_min_num_identifier_candidate_chars=1

" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0

" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
"set tags=/home/kk/omnetpp-4.6/tags

"
let g:ycm_collect_identifiers_from_comments_and_strings=1


" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>

" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

" 从第一个键入字符就开始罗列匹配项，默认2
"let g:ycm_min_num_of_chars_for_completion=2

" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1


""""""""""""""indent Guide 多层缩进""""""""""""""
"随vim自启动
let g:indent_guides_enable_on_vim_startup=1

"从第二层开始可视化显示缩进
let g:indent_guides_start_level=2

"色块宽度
let g:indent_guides_guide_size=1

""""""""""""""a.vim""""""""""""""
