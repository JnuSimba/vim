"ע�⣺1����vimrc��Ҫvim7.0���ϰ汾. vim�������ã�./configure --enable-cscope --enable-multibyte,����֧��cscope�Լ�����
"      2���û���Ŀ¼����Ҫ���õ��ļ�(��)������.vim .vimrc .cscope_ignorecase.sh(chmod +x)
"      3����װctags��Ҫ5.6�汾���ϣ�ubuntu �� sudo apt-get install exuberant-ctags
"      4����װcscope sudo apt-get install cscope  
"      5������ .cscope_ignorecase.sh ����cscope ��ִ�г����·��, ���� /usr/bin/cscope
"
"s1mba 20150527 v3.0
" ����Vundle ������������� vim-go �����֧�� go ����
"
"
"s1mba 20130906 v2.9
" ��������⣺,csl����cscope�����ļ�����Ҫ�˳������±༭�ļ�����ʹ��"cscope e"������
" cscope e ֧�ֶԴ�д��ĸ������:���Զ�ת��ΪСд
"
"s1mba 20130830 v2.8
" cscope����ƥ��ʱ֧�ִ�Сд������. take look at .cscope_ignorecase.sh
"
"s1mba 20130814 v2.7
" ctags�汾��Ҫ5.6���ϣ�����typedef����Ľṹ���Զ���ȫ����(omnicppcomplet)�޷�ʶ�����
"
"s1mba 20130814 v2.6
" �Զ���c��cpp��h�ļ�ͷ. ����ǰ�ļ���C_AuthorName��ֵ���޸��ļ�����, ģ���~/.vim/c-support/templates/h-file-header,~/.vim/c-support/templates/c-file-header.�ļ�ͷ�е�date��ʽ��.vim/plugin/c.vim��DATE����
"
"s1mba 20130705
" ��Ҫvim7.0���ϰ汾,�������ã�./configure --enable-cscope --enable-multibyte
"
"s1mba 2011.12.28 v1.5
"      �ļ�����ʱ�Զ�����taglist
"      :Tlist ����taglist ctrl+w �л�����, ��ĳ������ߺ������� ctrl+] ���Ե���tags�г��ֵĶ�����������ļ���ʾ
"      ,csl������ǰĿ¼�µ�scope�ļ�; ,cst ����/usr/include  /usr/local/include ��scope�ļ�
"      �����ַ���ʱ���Դ�Сд
"      ��ס�ϴδ򿪵�λ��
"      ������
"
"s1mba 20110504 create: 
" ���ļ���vim��ҪԤ������������(��������Ϊ����)��
"      ��ɫ(�����۾�) colorscheme desert
"      ���ֵ�֧��
"      ����ģʽ��,ʹ��ctrl+������ƶ����
"      Statusline״̬����ʾ: ��ǰ·������ǰ�༭�ļ�����굱ǰ����
"      Text options.�����Զ�����
"      ������ǰĿ¼��taglist[,ctl],����ϵͳ����taglist[,ctt]
"      windows manager: �鿴�����б���ǰĿ¼�ļ��б�[wm],ʹ�� ctrl+x, ctrl+z �л��򿪵��ļ����ڣ�ctrl+k �رմ��ڣ�tabbar����
"      ��ӶԺ�����ע��˵�������ѡ�к�����������[,cf]
"      �����ļ�ʱ�Զ�����ļ�(֧��pl,sh�ļ���ʽ)��ע��,c/c++��c.vim�Զ����
"      c.vim:���庯��[,if]����Ӻ������ļ�����ע��[,cfu]
"      a.vim: cpp/h�ļ�֮���л�. [,a]
"      tab���ܲ�ȫ���ʣ���ע�ͣ�
"      OmniCppComplete: ��Ա�����������Զ���ʾ (��Ҫvim7.0���ϰ汾֧��)
"      ��������ƥ��,�Զ����������
"      NERD_commenter:����ע�͵����У�֧�ֶ����ļ���ʽ��ѡ�ж������ݺ�[,cm]
"
"
"    cscope����Ҫ������ͨ��ͬ��������"find"��ʵ�ֵģ�
"    ���忴�� .vimrc �ļ��е�ӳ�䣬���� ,cfs ��ʾ cscope find s name��
"    ������ûͣ���ڷ����ϣ����ֹ���������ֶΣ�  
"    ,cw�г������ֶγ��ֵ��б� ctrl+w �л�����
"    cscope find ���÷�:
"    cs find c|d|e|f|g|i|s|t name
"        0 �� s     ���ұ� C ����(��������ע��)
"        1 �� g     ���ұ�����
"        2 �� d     ���ұ��������õĺ���
"        3 �� c     ���ҵ��ñ������ĺ���
"        4 �� t     ���ұ��ַ���
"        6 �� e     ���ұ� egrep ƥ��ģʽ
"        7 �� f     ���ұ��ļ�
"        8 �� i     ���Ұ������ļ����ļ�

" vim��������: (����������������"vi/vim����ͼ")
"   һ������ģʽ��( ��esc��)
"      1. gd: ѡ�й�����ڵĵ���. ͨ��ʹ��n��������һ����ͬ����,NΪ��һ��
"      2. Ctrl-o: ��ת����һ�εĹ������λ�á���֮��Ӧ����: Ctrl-i
"      3. gf: �򿪹�����ڵ��ļ�(��Ҫtaglist��֧��)
"      4. gg: �����ļ�ͷ����֮��Ӧ�����ļ�β: G
"      5. f+'ĳ����ĸ': ��ת����ǰ��ĳ����ĸ��
"      6. Shift-v: ѡ�е�ǰ�С�Ctrl-v: ѡ����ĸ
"      7. ѡ��ģʽ��+=: ѡ���ж���
"      8. Ctrl+w+�����(h,l,j,k): ��Ļ֮����ת
"      9. 0: ������ �൱�� home
"      10. ye ����һ�����ʣ�de ɾ��һ�����ʡ�w ����һ�����ʵĿ�ͷ��e ����ǰ���ʵĽ�β��
"      11. yy ����һ�У�dd ɾ��һ��, ����ǰ������ּ��������С�
"      12. zi �����صĴ����ж���
"      13. u: undo  ctrl+r: redo
"      14. :num  ����ĳһ�к�
"      15. % : �������������ϣ�ƥ�������ƶ������� (, {, [ 
"   ������������ģʽ (����ģʽ��+Shift+:)
"      1. vs+filename: ���ļ�,�������ļ����·��������ҷ���: sv
"         ctrl+w+[num]+ +/-  �����߶ȣ�+ < > �������
"      2. n,ms/regex/replace/gc: ��n�е�m���е�ƥ�䵽regex������ַ����滻��replace
"      3. g!/pattern/d ɾ������pattern �ַ������С�
"      4. set (no)list ���Կ��� tab ^I��^M��$ �н�����(ctrl+v+tab-->^I�� ctrl+v+M-->^M��ctrl+M-->$��
"
"   ��������ģʽ (i,a,I,A)
"      1. Ctrl-backspace: ɾ��
"      2. ctrl+p, ctrl+n �ؼ��ֲ���
   

" ������ netrw,û�ж�д�����ļ������󣬵������ᵼ�� :E ������ã��������ã�
" window manager ��������Ŀ¼����ʹ򿪶���ļ�������
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

"������ʾ����
set number  
" set nonu

"Get out of VI's compatible mode..
" ������vi������ᶪʧ�ܶ�vim������
set nocompatible

"Sets how many lines of history VIM har to remember
set history=7000

"Enable filetype plugin.�����ļ��Զ�ʶ��
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Enable syntax hl
syntax enable
"������ɫ
if has("gui_running")
    "ͼ�ν��������
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
Plugin 'fatih/vim-go'  " �� vim �� :PluginInstall ��װvim-go
  
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
" ���ֵ�֧�� -������configure vimʱ��Ҫ���ѡ�--enable-multibyte
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

"Set backspace. �˸�ʱ���Ƴ������ַ�
set backspace=eol,start,indent

""""""""""""""""""""""""""""""
" Statusline״̬��
""""""""""""""""""""""""""""""
"Always hide the statusline
set laststatus=2
" !��̾�ŵ��÷�: ��"help E127",���֮ǰ�д˺����������滻��
function! CurDir()
  let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
  return curdir
endfunction
" �񡵱ǰ������
function! ProjectDir()
  let projectDir = substitute(getcwd(), '.*/', "", "")
  return  projectDir
endfunction

"Format the statusline
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
let g:curdir=CurDir()
set statusline=%r%{g:curdir}%h\ %f\ %w\ %l/%L:%c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options.����
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
" ��ӵ�ǰĿ¼ tags
map <leader>ctl :call UpdateTag() <cr>
" ����ϵͳͷ�ļ�, ���ϵͳtags
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

"�ļ�����ʱ�Զ�����tag,cscope
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
" ��ӶԺ�����˵��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cf :Dox<cr>
let g:DoxygenToolkit_licenseTag="My own license\<enter>" 
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK" 
let g:DoxygenToolkit_briefTag_pre = "��  ��: " 
let g:DoxygenToolkit_paramTag_pre = "��  ��: " 
let g:DoxygenToolkit_returnTag =    "����ֵ: " 
let g:DoxygenToolkit_briefTag_funcName = "no" 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�����ļ�ʱ�Զ�����ļ���ע��,c/c++��c.vim(����ͨ��~/.vim/c-support/templates/c-file-header�ļ��޸���ʽ)���
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
  call append(lnum, '    echo "����: "' )
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
  call append(lnum, '#����' )
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
" c.vim:�������ļ�ע��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �Զ����c/c++�ļ�ͷע��
let g:C_AuthorName = "s1mba"
"  map <leader>if :  ���c����
"  map <leader>im :  ���main����
"  map <leader>cfu :  ��Ӻ���ע��
"  map <leader>cfr :  ���ע��
"  map <leader>pd :  ��Ӻ궨��

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" a.vim: cpp/h�ļ����л�
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��cpp/h�ļ����л�,���û�ж�Ӧ���ļ��򴴽�
map <leader>a :A <cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"omnicppcomplet�Զ���ȫ���� ֻ֧��vim7.0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"֧��.->���Զ���ȫ

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tab�������
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
"��������ƥ��,�Զ����������
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
"����ע�ͣ�֧�ֶ����ļ���ʽ NERD_commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>cc :����ע��
" map <leader>cm :����ע��
" let NERDShutUp=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"���ܲ�ȫ OmniCppComplete 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("completeopt")
  set completeopt=longest,menu
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���Դ�Сд,�����ڲ���
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��ס�ϴδ򿪵�λ��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g'\"" |
  \ endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>0 ^
map 0 ^

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>m :!make <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �ر�����ƥ�䴰��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QuickFix ����. cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cw :cw <CR>
map <leader>cn :cn <CR>
map <leader>cp :cp <CR>

