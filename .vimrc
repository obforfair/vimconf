"使用Bundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"设置powerline状态栏
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'
set nocompatible
set enc=utf-8
let termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12

"netdtree
Bundle 'The-NERD-tree'
map <C-a> :NERDTreeToggle<CR>

"taglist
"bundle 'taglist.vim'

"YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'


"
Bundle 'git://git.wincent.com/command-t.git'
map <C-t> :CommandT<CR>
map <C-b> :CommandTBuffer<CR>


"Bundle 'Shougo/neocomplete.vim'
"Bundle 'Shougo/vimproc.vim'
"Bundle 'Shougo/unite.vim'
"Bundle 'shawncplus/phpcomplete.vim'
"Bundle 'm2mdas/phpcomplete-extended'
"Bundle 'm2mdas/phpcomplete-extended-symfony'
"Bundle 'evidens/vim-twig'

"配置
syntax on
syntax enable "针对不同的文件采用不同的缩进方式
filetype on "检测文件类型
filetype plugin on "允许插件
filetype plugin indent on "启动智能补全

set encoding=utf-8 "编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "加载文件时格式选择
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set smartindent " 开启新行时使用智能自动缩
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set autoread "自动载入修改
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set nohlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=1 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\  " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为

"快捷键
nmap <s-tab> V<
nmap <tab> V>
vmap <s-tab> V<
vmap <tab> V>
map cc v:s/^/\/\//g<CR>
map cx v:s/^\/\///g<CR>
vmap cc :s/^/\/\//g<CR>
vmap cx :s/^\/\///g<CR>
nmap <C-l> gt
nmap <C-h> gT
map <C-w> :tabc<cr>
map <C-k> k
map <C-y> 0
map <C-p> $
imap <C-j> <Esc>ji
imap <C-k> <Esc>ki
imap <C-h> <Esc>hi
imap <C-l> <Esc>li
imap <C-y> <Esc>^i
imap <C-p> <Esc>$a
imap <C-s> <Esc>:wi
map <C-s> <Esc>:w
map <C-;> %
