"{{{ 基本设置
set number                              " 显示行号
set hlsearch                            " 高亮搜索
set ignorecase                          " 自动补全忽略大小写
set wildmenu                            " 命令模式强力补全
"}}}

"{{{ 主题颜色
set t_Co=256                            " 开启256色支持
colorscheme desertEx_256               " 沙漠主题颜色
"colorscheme Mustang                     " 野马主题颜色
"colorscheme molokai			        " 使用molokai主题
"}}}

"{{{ 标尺状态栏
set ruler                               " 显示光标所在位置
set laststatus=2                        " 显示文件状态
set cursorline                          " 高亮当前行
"}}}

"{{{ 缩进/换行/空白/滚动
set autoindent                          " 开启新行时，自动缩进
set smartindent                         " 开启新行时，智能缩进
set cindent                             " C程序自动缩进
set nowrap                              " 不折行显示
set lbr                                 " 不在单词中间断行
set shiftwidth=2                        " 缩进空白数
set tabstop=2                           " Tab所占空格数
set expandtab                           " 将Tab展开为空格
set softtabstop=4                       " 配合tabstop
set pastetoggle=<F12>                   " 切换粘贴模式
autocmd FileType make   set      noexpandtab
set backspace=eol,start,indent          " 插入模式下使用 <BS>、<Del> <C-W> <C-U>
"}}}

"{{{ 滚动.透明
hi Normal ctermfg=15 ctermbg=none
hi Normal ctermfg=15 ctermbg=none
set scrolloff=15                        " 滚动时光标上下保留行数
"}}}
"
"{{{ 自动补全
set completeopt=longest,menu            " 只显示匹配项目不默认选中第一个
"}}}

"{{{ 代码折叠
set foldenable                          " 开启代码折叠
set foldmethod=syntax                   " 根据语法折叠代码
set foldlevel=99                        " 默认的折叠级别，为0则表示函数级别的折叠
set foldcolumn=0                        " 折叠线所占的宽度
"}}}

"{{{ python shell make等缩进折叠
autocmd FileType sh setlocal foldmethod=indent
autocmd FileType html setlocal foldmethod=indent
autocmd FileType python setlocal foldmethod=indent
autocmd FileType automake setlocal foldmethod=indent
"}}}

"{{{ 用空格键开关折叠代码
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>    
"}}}

"{{{ 编码及存储
set fileencodings=utf-8                 " 文件编码，强制UTF-8
set encoding=utf-8                      " vim内部编码
set nobomb                              " 不使用bom编码
set nobackup                            " 不使用备份文件
set noswapfile                          " 不产生交换文件
set autoread                            " 自动同步外部修改
set autowrite                           " 自动把内容写回文件
"}}}

"{{{ 窗口移动
nnoremap    <C-j>        <C-W>j
nnoremap    <C-k>        <C-W>k
nnoremap    <C-h>        <C-W>h
nnoremap    <C-l>        <C-W>l
"}}}

"{{{ 命令模式下光标移动
cnoremap    <C-j>        <down>
cnoremap    <C-k>        <up>
cnoremap    <C-h>        <left>
cnoremap    <C-l>        <right>
"}}}

"{{{ 插入模式下光标移动
inoremap    <C-j>        <down>
inoremap    <C-k>        <up>
inoremap    <C-h>        <left>
inoremap    <C-l>        <right>
inoremap    <C-o>        <down>
inoremap    <C-p>        <up>
inoremap    jj           <esc>
inoremap    kk           <cr>
"}}}

"{{{ F1 --- F12快捷键
nnoremap    <F3>         :marks<cr>
nnoremap    <F4>         :!ctags -R<cr>
nnoremap    <F5>         :!cscope -Rbq<CR>:cs reset<CR>
"}}}

"{{{ 常规模式下leader代码宏和自定义快捷键
nnoremap   ,w            :w<cr>
nnoremap   ,s            :%s///gc<left><left><left><left>
nnoremap   ,f            :/
nnoremap   ,e            :<up>
nnoremap   ,t            :TlistToggle<cr>
nnoremap   ,r            :call CscopeFind('s', expand('<cword>'))<cr>
nnoremap   ,a            :call ToggleLocationList()<cr>
nnoremap   ,z            :NERDTreeToggle<cr>
"}}}

"{{{ 可视模式下leader代码宏和自定义快捷键
vnoremap   ,s            :s///gc<left><left><left><left>
vnoremap   ,d            :<bs><bs><bs><bs><bs>exe '!clear;yd '.'"'GetVisual().'"'<cr>
"}}}

"{{{ 命令行模式下leader代码宏和自定义快捷键
cnoremap    jj           <esc>
cnoremap    kk           <CR>
"}}}

"{{{ NERDTree文件浏览器插件
"autocmd VimEnter * NERDTree             " 自动加载
autocmd VimEnter * wincmd p             " 光标放到打开的文件
let NERDTreeWinSize = 25                " 文件浏览窗口大小
"}}}

"{{{ Tabbar顶部选项卡
let g:Tb_MaxSize = 3                    " 最多三排选项卡
let g:Tb_TabWrap = 1                    " 每个选项卡之间间隔
"}}}

"{{{ Buffers/Tab操作
noremap     <C-u>        :bprev<CR>
noremap     <C-i>        :bnext<CR>
nnoremap    ,d           :Bclose<CR>
"}}}

"{{{ Tag list (ctags)操作
let Tlist_Show_One_File = 1            " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         " 在右侧窗口中显示taglist窗口
let Tlist_Ctags_Cmd = '/usr/bin/ctags' " ctags可执行文件所在路径
let Tlist_GainFocus_On_ToggleOpen = 1  " 打开taglist时，光标保留在taglist窗口
"}}}
