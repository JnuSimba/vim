"注意：1、本vimrc需要vim7.0以上版本. vim编译配置：./configure --enable-cscope --enable-multibyte,用来支持cscope以及中文
"      2、用户家目录下需要放置的文件(夹)包括：.vim .vimrc .cscope_ignorecase.sh(chmod +x)
"      3、安装ctags需要5.6版本以上，ubuntu 下 sudo apt-get install exuberant-ctags
"      4、安装cscope sudo apt-get install cscope  
"      5、更改 .cscope_ignorecase.sh 里面cscope 可执行程序的路径, 比如 /usr/bin/cscope
"
"s1mba 20150527 v3.0
" 增加Vundle 来管理插件，添加 vim-go 插件以支持 go 语言
"
"
"s1mba 20130906 v2.9
" 解决的问题：,csl创建cscope关联文件后需要退出再重新编辑文件才能使用"cscope e"等命令
" cscope e 支持对大写字母的搜索:先自动转化为小写
"
"s1mba 20130830 v2.8
" cscope正则匹配时支持大小写不敏感. take look at .cscope_ignorecase.sh
"
"s1mba 20130814 v2.7
" ctags版本需要5.6以上，否则typedef定义的结构体自动补全功能(omnicppcomplet)无法识别变量
"
"s1mba 20130814 v2.6
" 自定义c、cpp、h文件头. 给当前文件的C_AuthorName赋值可修改文件作者, 模板见~/.vim/c-support/templates/h-file-header,~/.vim/c-support/templates/c-file-header.文件头中的date格式见.vim/plugin/c.vim的DATE定义
"
"s1mba 20130705
" 需要vim7.0以上版本,编译配置：./configure --enable-cscope --enable-multibyte
"
"s1mba 2011.12.28 v1.5
"      文件更新时自动更新taglist
"      :Tlist 启动taglist ctrl+w 切换窗口, 在某个宏或者函数名上 ctrl+] 可以弹出tags中出现的定义和声明的文件提示
"      ,csl产生当前目录下的scope文件; ,cst 增加/usr/include  /usr/local/include 的scope文件
"      查找字符串时忽略大小写
"      记住上次打开的位置
"      软行首
"
"s1mba 20110504 create: 
" 本文件的vim主要预设命令、插件如下(方括号中为命令)：
"      颜色(不伤眼睛) colorscheme desert
"      汉字的支持
"      插入模式下,使用ctrl+方向键移动光标
"      Statusline状态栏显示: 当前路径、当前编辑文件、光标当前行列
"      Text options.包括自动缩进
"      创建当前目录下taglist[,ctl],包括系统函数taglist[,ctt]
"      windows manager: 查看函数列表、当前目录文件列表[wm],使用 ctrl+x, ctrl+z 切换打开的文件窗口，ctrl+k 关闭窗口（tabbar）。
"      添加对函数的注释说明，光标选中函数名所在行[,cf]
"      创建文件时自动添加文件(支持pl,sh文件格式)的注释,c/c++由c.vim自动完成
"      c.vim:定义函数[,if]，添加函数、文件功能注释[,cfu]
"      a.vim: cpp/h文件之间切换. [,a]
"      tab智能补全单词（已注释）
"      OmniCppComplete: 成员变量、函数自动提示 (需要vim7.0以上版本支持)
"      括号智能匹配,自动添加右括号
"      NERD_commenter:智能注释掉多行，支持多种文件格式，选中多行内容后[,cm]
"
"
"    cscope的主要功能是通过同的子命令"find"来实现的，
"    具体看本 .vimrc 文件中的映射，比如 ,cfs 表示 cscope find s name，
"    如果光标没停留在符号上，需手工输入查找字段，  
"    ,cw列出查找字段出现的列表， ctrl+w 切换窗口
"    cscope find 的用法:
"    cs find c|d|e|f|g|i|s|t name
"        0 或 s     查找本 C 符号(可以跳过注释)
"        1 或 g     查找本定义
"        2 或 d     查找本函数调用的函数
"        3 或 c     查找调用本函数的函数
"        4 或 t     查找本字符串
"        6 或 e     查找本 egrep 匹配模式
"        7 或 f     查找本文件
"        8 或 i     查找包含本文件的文件

" vim常用命令: (最基本的命令可下载"vi/vim键盘图")
"   一、命令模式下( 按esc键)
"      1. gd: 选中光标所在的单词. 通常使用n来跳到下一个相同单词,N为上一个
"      2. Ctrl-o: 跳转到上一次的光标所在位置。与之对应的是: Ctrl-i
"      3. gf: 打开光标所在的文件(需要taglist的支持)
"      4. gg: 跳到文件头。与之对应的是文件尾: G
"      5. f+'某个字母': 跳转到当前的某个字母上
"      6. Shift-v: 选中当前行。Ctrl-v: 选中字母
"      7. 选中模式下+=: 选中行对齐
"      8. Ctrl+w+方向键(h,l,j,k): 屏幕之间跳转
"      9. 0: 软行首 相当于 home
"      10. ye 复制一个单词，de 删除一个单词。w 到下一个单词的开头，e 到当前单词的结尾。
"      11. yy 复制一行，dd 删除一行, 命令前面加数字即操作多行。
"      12. zi 将隐藏的代码行都打开
"      13. u: undo  ctrl+r: redo
"      14. % : 将光标放在括号上，匹配括号移动，包括 (, {, [ 
"      15. q: : That brings up an interactive history of : commands, you can edit them, and to run one you hit "enter" on the line. 
"   二、输入命令模式 (命令模式下+Shift+:)
"      1. vs+filename: 打开文件,与现有文件上下分屏。左右分屏: sv
"         ctrl+w+[num]+ +/-  调整高度，+ < > 调整宽度
"      2. n,ms/regex/replace/gc: 将n行到m行中的匹配到regex正则的字符串替换成replace
"      3. g!/pattern/d 删除不含pattern 字符串的行。
"      4. set (no)list 可以看到 tab ^I、^M、$ 行结束符(ctrl+v+tab-->^I， ctrl+v+M-->^M，ctrl+M-->$）
"      5. num  跳到某一行号
"      6. h vim help manual    
"
"   三、插入模式 (i,a,I,A)
"      1. Ctrl-backspace: 删除
"      2. ctrl+p, ctrl+n 关键字补齐
" 
"  vimdiff txt1 txt2  在vim 中同时打开两个文件并匹配不同的地方

" 不加载 netrw,没有读写网络文件的需求，但这样会导致 :E 命令不可用（基本无用）
" window manager 可以满足目录浏览和打开多个文件的需求
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

"设置显示行数
set number  
" set nonu

"Get out of VI's compatible mode..
" 不兼容vi，否则会丢失很多vim的特性
set nocompatible

"Sets how many lines of history VIM har to remember
set history=7000

"Enable filetype plugin.开启文件自动识别
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Enable syntax hl
syntax enable
"设置颜色
if has("gui_running")
    "图形界面的设置
    set guioptions-=T
    let psc_style='cool'
    colorscheme darkblue 
else
    set background=dark
    "colorscheme default 
    colorscheme desert
endif


" ---------------------------------------------------------------------------
" Vundle  
" https://github.com/gmarik/Vundle.vim  
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" ---------------------------------------------------------------------------
  
set nocompatible              " be iMproved, required  
filetype off                  " required  
  
" set the runtime path to include Vundle and initialize  
set rtp+=~/.vim/bundle/Vundle.vim  
call vundle#begin()  
" alternatively, pass a path where Vundle should install plugins  
"call vundle#begin('~/some/path/here')  
  
" let Vundle manage Vundle, required  
Plugin 'gmarik/Vundle.vim'  
  
" The following are examples of different formats supported.  
" Keep Plugin commands between vundle#begin/end.  
" plugin on GitHub repo  
""Plugin 'tpope/vim-fugitive'  
" plugin from http://vim-scripts.org/vim/scripts.html  
""Plugin 'L9'  
" Git plugin not hosted on GitHub  
""Plugin 'git://git.wincent.com/command-t.git'  
" git repos on your local machine (i.e. when working on your own plugin)  
""Plugin 'file:///home/gmarik/path/to/plugin'  
" The sparkup vim script is in a subdirectory of this repo called vim.  
" Pass the path to set the runtimepath properly.  
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}  
" Avoid a name conflict with L9  
""Plugin 'user/L9', {'name': 'newL9'}  
  
" Install Vim-go  
Plugin 'fatih/vim-go'  " 在 vim 中 :PluginInstall 安装vim-go
  
" All of your Plugins must be added before the following line  
call vundle#end()            " required  
filetype plugin indent on    " required  
" To ignore plugin indent changes, instead use:  
"filetype plugin on  
"  
" Brief help  
" :PluginList       - lists configured plugins  
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate  
" :PluginSearch foo - searches for foo; append `!` to refresh local cache  
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal  
"  
" see :h vundle for more details or wiki for FAQ  
" Put your non-Plugin stuff after this line 



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 汉字的支持 -依赖：configure vim时需要添加选项：--enable-multibyte
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=gb2312
set fileencodings=utf-8,gb2312,utf-8,utf-16,ucs-bom,big5,latin1
set fileencoding=gb2312
set termencoding=gb2312
set fencs=utf-8,gbk 
""set encoding=chinese
""set langmenu=zh_CN.GB2312
""set imcmdline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
set so=7

"Set mapleader.
let mapleader = ","
let g:mapleader = ","

"Fast reloading of the .vimrc
map <leader>s :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <leader>e :e! ~/.vimrc<cr>
"When .vimrc is edited, reload it
"autocmd! bufwritepost .vimrc source ~/.vimrc

"Highlight search things
set hlsearch

"Set backspace. 退格时可移除所有字符
set backspace=eol,start,indent

""""""""""""""""""""""""""""""
" Statusline状态栏
""""""""""""""""""""""""""""""
"Always hide the statusline
set laststatus=2
" !感叹号的用法: 见"help E127",如果之前有此函数定义则替换掉
function! CurDir()
  let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
  return curdir
endfunction
" 获取路径
function! ProjectDir()
  let projectDir = substitute(getcwd(), '.*/', "", "")
  return  projectDir
endfunction

"Format the statusline
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
let g:curdir=CurDir()
set statusline=%r%{g:curdir}%h\ %f\ %w\ %l/%L:%c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options.缩进
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4

map <leader>t2 :set shiftwidth=2<cr>
map <leader>t4 :set shiftwidth=4<cr>
au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=4
au FileType java setl shiftwidth=4
au FileType java setl tabstop=4

set smarttab
set lbr
set tw=500
"Turn backup off
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Switch to current dir
map <leader>cd :cd %:p:h<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 添加当前目录 tags
map <leader>ctl :call UpdateTag() <cr>
" 包含系统头文件, 添加系统tags
map <leader>ctt :silent !ctags -R -f ~/.vim/systags --c++-kinds=+p --fields=+iaS --exclude=*.js --extra=+q /usr/include /usr/local/include <cr>
set tags+=~/.vim/systags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! CallCscope()
  if has("cscope")
    set csprg=~/.cscope_ignorecase.sh
    set csto=1
    set cst
    set nocsverb
    if  filereadable("cscope.out")
      cs add cscope.out 
    endif
    set csverb
    if has('quickfix')
      set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
  endif
endfunc
call CallCscope()

map <leader>cfe :cs find e <C-R>=tolower(expand("<cword>"))<CR><CR>
map <leader>cff :cs find f <C-R>=expand("<cfile>")<CR><CR>
map <leader>cfs :cs find s <C-R>=expand("<cword>")<CR><CR>
map <leader>cfc :cs find c <C-R>=expand("<cword>")<CR><CR>
map <leader>cfd :cs find d <C-R>=expand("<cword>")<CR><CR>
map <leader>cft :cs find t <C-R>=expand("<cword>")<CR><CR>
map <leader>cfg :cs find g <C-R>=expand("<cword>")<CR><CR>
map <leader>cfi :cs find i <C-R>=expand("<cfile>")<CR><CR>

map <leader>csl :silent !find . -name "*.c" -o -name "*.cpp" -o -name "*.h" > cscope.files;cscope -bq;<cr>:call CallCscope()<CR>
map <leader>cst :silent !find /usr/include /usr/local/include   -name "*.c" -o -name "*.cpp" -o -name "*.h" > cscope.files;cscope -bq;<cr>:call CallCscope()<CR>

"文件更新时自动更新tag,cscope
func! UpdateTag()
  silent !ctags -R --c++-kinds=+p --fields=+iaS --exclude=*.js --extra=+q
endfunc
"autocmd BufWrite *.cpp,*.h,*.c,*.hpp :call UpdateTag()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" windows manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set showmode
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:winManagerWindowLayout='FileExplorer'
let g:Tb_MaxSize = 3
nmap wm :WMToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""
" tabbar(base on minibufExplorer)
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-k> :bd<cr>:bp<cr> 
nmap <C-z> :bp<cr>
nmap <C-x> :bn<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 添加对函数的说明
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cf :Dox<cr>
let g:DoxygenToolkit_licenseTag="My own license\<enter>" 
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK" 
let g:DoxygenToolkit_briefTag_pre = "描  述: " 
let g:DoxygenToolkit_paramTag_pre = "参  数: " 
let g:DoxygenToolkit_returnTag =    "返回值: " 
let g:DoxygenToolkit_briefTag_funcName = "no" 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"创建文件时自动添加文件的注释,c/c++由c.vim(可以通过~/.vim/c-support/templates/c-file-header文件修改样式)完成
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Addfileinfo()
  call append(3, "@author: s1mba")
  call append(4, "@date: " . strftime("%Y-%m-%d"))
  call append(5, "@description: " )
endf
function! Addshreadme()
  call setline(1,"#!/bin/bash")
  call append(1, "")
  call append(2, "<<COMMENT")
  call Addfileinfo()
  :let lnum=6
  call append(lnum, "COMMENT" )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, "function usage()" )
:let lnum=lnum+1
  call append(lnum, "{" )
:let lnum=lnum+1
  call append(lnum, "    echo" )
:let lnum=lnum+1
  call append(lnum, '    echo "Usage: $0 [OPTION...] argv"' )
:let lnum=lnum+1
  call append(lnum, '    echo "功能: "' )
:let lnum=lnum+1
  call append(lnum, '    echo' )
:let lnum=lnum+1
  call append(lnum, '    echo "OPTION"' )
:let lnum=lnum+1
  call append(lnum, '    echo "  -h|--help                 help"' )
:let lnum=lnum+1
  call append(lnum, '    echo "  -t|--test                 test"' )
:let lnum=lnum+1
  call append(lnum, '    echo' )
:let lnum=lnum+1
  call append(lnum, '}' )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, 'while [ $# -gt 0 ]; do' )
:let lnum=lnum+1
  call append(lnum, '    case "$1" in' )
:let lnum=lnum+1
  call append(lnum, '        "--help" | "-h")' )
:let lnum=lnum+1
  call append(lnum, '            usage; exit 0 ;;' )
:let lnum=lnum+1
  call append(lnum, '        "--test" | "-t")' )
:let lnum=lnum+1
  call append(lnum, '            shift; if [ $# -gt 0 ]; then test="$1"; fi ;;' )
:let lnum=lnum+1
  call append(lnum, '        *)' )
:let lnum=lnum+1
  call append(lnum, '            break;;' )
:let lnum=lnum+1
  call append(lnum, '    esac' )
:let lnum=lnum+1
  call append(lnum, '    shift;' )
:let lnum=lnum+1
  call append(lnum, 'done' )
:let lnum=lnum+1
  call append(lnum, '' )
:let lnum=lnum+1
  call append(lnum, '<<COMMENT' )
:let lnum=lnum+1
  call append(lnum, '#例子' )
:let lnum=lnum+1
  call append(lnum, 'if [ $# -ne 1 ]; then' )
:let lnum=lnum+1
  call append(lnum, '    usage' )
:let lnum=lnum+1
  call append(lnum, '    exit 0;' )
:let lnum=lnum+1
  call append(lnum, 'fi' )
:let lnum=lnum+1
  call append(lnum, 'COMMENT' )
endf
map <leader>shc :call Addshreadme()<cr>
au BufNewFile *.sh :call Addshreadme()
function! Addplreadme()
  call setline(1,"#!/usr/bin/perl -w")
  call append(1, "")
  call append(2, "=pod")
  call Addfileinfo()
  :let lnum=6
  call append(lnum, "=cut" )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, "use strict;" )
:let lnum=lnum+1
  call append(lnum, "use Getopt::Long qw(:config pass_through);" )
:let lnum=lnum+1
  call append(lnum, "use File::Basename;" )
:let lnum=lnum+1
  call append(lnum, "my $dir = dirname($0);" )
:let lnum=lnum+1
  call append(lnum, "my $programName = basename($0);" )
:let lnum=lnum+1
  call append(lnum, "my $usage = <<EOF;" )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, "Usage: $0 [options] " )
:let lnum=lnum+1
  call append(lnum, "  -c|--cnt                            test int" )
:let lnum=lnum+1
  call append(lnum, "  -f|--file                            test string" )
:let lnum=lnum+1
  call append(lnum, "  -h|--help                            Show this help message" )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, "EOF" )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, "my ($showHelp, $test_file, $test_cnt)=(0,'', 0);" )
:let lnum=lnum+1
  call append(lnum, "my %options = ( " )
:let lnum=lnum+1
  call append(lnum, "        'h|help' => \\$showHelp," )
:let lnum=lnum+1
  call append(lnum, "        'f|file=s' => \\$test_file, " )
:let lnum=lnum+1
  call append(lnum, "        'c|cnt=i' => \\$test_cnt, " )
:let lnum=lnum+1
  call append(lnum, "    );" )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, "GetOptions(%options);" )
:let lnum=lnum+1
  call append(lnum, "if ($showHelp) {" )
:let lnum=lnum+1
  call append(lnum, "    print $usage; " )
:let lnum=lnum+1
  call append(lnum, "    exit 1; " )
:let lnum=lnum+1
  call append(lnum, "}" )
:let lnum=lnum+1
  call append(lnum, "" )
:let lnum=lnum+1
  call append(lnum, "shift @ARGV||die \"$usage\\n\";" )
:let lnum=lnum+1
  call append(lnum, "" )
endf
map <leader>plc :call Addplreadme()<cr>
au BufNewFile *.pl :call Addplreadme()
function! Addcreadme()
  call setline(1,"/***************************************")
  call append(1, "@author: s1mba")
  call append(2, "@date: " . strftime("%Y-%m-%d"))
  call append(3, "@description: " )
  call append(4, "***************************************/" )
endf
"au BufNewFile *.h :call Addcreadme()
"au BufNewFile *.c :call Addcreadme()
"au BufNewFile *.cpp :call Addcreadme()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c.vim:函数、文件注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动添加c/c++文件头注释
let g:C_AuthorName = "s1mba"
"  map <leader>if :  添加c函数
"  map <leader>im :  添加main函数
"  map <leader>cfu :  添加函数注释
"  map <leader>cfr :  添加注释
"  map <leader>pd :  添加宏定义

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" a.vim: cpp/h文件中切换
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"在cpp/h文件中切换,如果没有对应的文件则创建
map <leader>a :A <cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"omnicppcomplet自动补全功能 只支持vim7.0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"支持.->的自动补全

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tab智能完成
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Smart_TabComplete()
    let line = getline('.')                    
    let substr = strpart(line, -1, col('.')+1)
    let substr = matchstr(substr, "[^ \t]*$")
    if (strlen(substr)==0)                  
        return "\<tab>"
    endif
    let has_period = match(substr, '\.') != -1
    let has_slash = match(substr, '\/') != -1 
    if (!has_period && !has_slash)
        return "\<C-X>\<C-P>"                  
    elseif ( has_slash )
        return "\<C-X>\<C-F>"                 
    else
        return "\<C-X>\<C-O>"                
    endif
endfunction
"inoremap <tab> <c-r>=Smart_TabComplete()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"括号智能匹配,自动添加右括号
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>
":inoremap " ""<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"智能注释，支持多种文件格式 NERD_commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>cc :单行注释
" map <leader>cm :多行注释
" let NERDShutUp=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"智能补全 OmniCppComplete 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("completeopt")
  set completeopt=longest,menu
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 忽略大小写,可用于查找
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 记住上次打开的位置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g'\"" |
  \ endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 软行首
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>0 ^
map 0 ^

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>m :!make <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭智能匹配窗口
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QuickFix 窗口. cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cw :cw <CR>
map <leader>cn :cn <CR>
map <leader>cp :cp <CR>

