"×¢Òâ£º1¡¢±¾vimrcĞèÒªvim7.0ÒÔÉÏ°æ±¾. vim±àÒëÅäÖÃ£º./configure --enable-cscope --enable-multibyte,ÓÃÀ´Ö§³ÖcscopeÒÔ¼°ÖĞÎÄ
"      2¡¢ÓÃ»§¼ÒÄ¿Â¼ÏÂĞèÒª·ÅÖÃµÄÎÄ¼ş(¼Ğ)°üÀ¨£º.vim .vimrc .cscope_ignorecase.sh(chmod +x)
"      3¡¢°²×°ctagsĞèÒª5.6°æ±¾ÒÔÉÏ£¬ubuntu ÏÂ sudo apt-get install exuberant-ctags
"      4¡¢°²×°cscope sudo apt-get install cscope  
"      5¡¢¸ü¸Ä .cscope_ignorecase.sh ÀïÃæcscope ¿ÉÖ´ĞĞ³ÌĞòµÄÂ·¾¶, ±ÈÈç /usr/bin/cscope
"
"s1mba 20150527 v3.0
" Ôö¼ÓVundle À´¹ÜÀí²å¼ş£¬Ìí¼Ó vim-go ²å¼şÒÔÖ§³Ö go ÓïÑÔ
"
"
"s1mba 20130906 v2.9
" ½â¾öµÄÎÊÌâ£º,csl´´½¨cscope¹ØÁªÎÄ¼şºóĞèÒªÍË³öÔÙÖØĞÂ±à¼­ÎÄ¼ş²ÅÄÜÊ¹ÓÃ"cscope e"µÈÃüÁî
" cscope e Ö§³Ö¶Ô´óĞ´×ÖÄ¸µÄËÑË÷:ÏÈ×Ô¶¯×ª»¯ÎªĞ¡Ğ´
"
"s1mba 20130830 v2.8
" cscopeÕıÔòÆ¥ÅäÊ±Ö§³Ö´óĞ¡Ğ´²»Ãô¸Ğ. take look at .cscope_ignorecase.sh
"
"s1mba 20130814 v2.7
" ctags°æ±¾ĞèÒª5.6ÒÔÉÏ£¬·ñÔòtypedef¶¨ÒåµÄ½á¹¹Ìå×Ô¶¯²¹È«¹¦ÄÜ(omnicppcomplet)ÎŞ·¨Ê¶±ğ±äÁ¿
"
"s1mba 20130814 v2.6
" ×Ô¶¨Òåc¡¢cpp¡¢hÎÄ¼şÍ·. ¸øµ±Ç°ÎÄ¼şµÄC_AuthorName¸³Öµ¿ÉĞŞ¸ÄÎÄ¼ş×÷Õß, Ä£°å¼û~/.vim/c-support/templates/h-file-header,~/.vim/c-support/templates/c-file-header.ÎÄ¼şÍ·ÖĞµÄdate¸ñÊ½¼û.vim/plugin/c.vimµÄDATE¶¨Òå
"
"s1mba 20130705
" ĞèÒªvim7.0ÒÔÉÏ°æ±¾,±àÒëÅäÖÃ£º./configure --enable-cscope --enable-multibyte
"
"s1mba 2011.12.28 v1.5
"      ÎÄ¼ş¸üĞÂÊ±×Ô¶¯¸üĞÂtaglist
"      :Tlist Æô¶¯taglist ctrl+w ÇĞ»»´°¿Ú, ÔÚÄ³¸öºê»òÕßº¯ÊıÃûÉÏ ctrl+] ¿ÉÒÔµ¯³ötagsÖĞ³öÏÖµÄ¶¨ÒåºÍÉùÃ÷µÄÎÄ¼şÌáÊ¾
"      ,csl²úÉúµ±Ç°Ä¿Â¼ÏÂµÄscopeÎÄ¼ş; ,cst Ôö¼Ó/usr/include  /usr/local/include µÄscopeÎÄ¼ş
"      ²éÕÒ×Ö·û´®Ê±ºöÂÔ´óĞ¡Ğ´
"      ¼Ç×¡ÉÏ´Î´ò¿ªµÄÎ»ÖÃ
"      ÈíĞĞÊ×
"
"s1mba 20110504 create: 
" ±¾ÎÄ¼şµÄvimÖ÷ÒªÔ¤ÉèÃüÁî¡¢²å¼şÈçÏÂ(·½À¨ºÅÖĞÎªÃüÁî)£º
"      ÑÕÉ«(²»ÉËÑÛ¾¦) colorscheme desert
"      ºº×ÖµÄÖ§³Ö
"      ²åÈëÄ£Ê½ÏÂ,Ê¹ÓÃctrl+·½Ïò¼üÒÆ¶¯¹â±ê
"      Statusline×´Ì¬À¸ÏÔÊ¾: µ±Ç°Â·¾¶¡¢µ±Ç°±à¼­ÎÄ¼ş¡¢¹â±êµ±Ç°ĞĞÁĞ
"      Text options.°üÀ¨×Ô¶¯Ëõ½ø
"      ´´½¨µ±Ç°Ä¿Â¼ÏÂtaglist[,ctl],°üÀ¨ÏµÍ³º¯Êıtaglist[,ctt]
"      windows manager: ²é¿´º¯ÊıÁĞ±í¡¢µ±Ç°Ä¿Â¼ÎÄ¼şÁĞ±í[wm],Ê¹ÓÃ ctrl+x, ctrl+z ÇĞ»»´ò¿ªµÄÎÄ¼ş´°¿Ú£¬ctrl+k ¹Ø±Õ´°¿Ú£¨tabbar£©¡£
"      Ìí¼Ó¶Ôº¯ÊıµÄ×¢ÊÍËµÃ÷£¬¹â±êÑ¡ÖĞº¯ÊıÃûËùÔÚĞĞ[,cf]
"      ´´½¨ÎÄ¼şÊ±×Ô¶¯Ìí¼ÓÎÄ¼ş(Ö§³Öpl,shÎÄ¼ş¸ñÊ½)µÄ×¢ÊÍ,c/c++ÓÉc.vim×Ô¶¯Íê³É
"      c.vim:¶¨Òåº¯Êı[,if]£¬Ìí¼Óº¯Êı¡¢ÎÄ¼ş¹¦ÄÜ×¢ÊÍ[,cfu]
"      a.vim: cpp/hÎÄ¼şÖ®¼äÇĞ»». [,a]
"      tabÖÇÄÜ²¹È«µ¥´Ê£¨ÒÑ×¢ÊÍ£©
"      OmniCppComplete: ³ÉÔ±±äÁ¿¡¢º¯Êı×Ô¶¯ÌáÊ¾ (ĞèÒªvim7.0ÒÔÉÏ°æ±¾Ö§³Ö)
"      À¨ºÅÖÇÄÜÆ¥Åä,×Ô¶¯Ìí¼ÓÓÒÀ¨ºÅ
"      NERD_commenter:ÖÇÄÜ×¢ÊÍµô¶àĞĞ£¬Ö§³Ö¶àÖÖÎÄ¼ş¸ñÊ½£¬Ñ¡ÖĞ¶àĞĞÄÚÈİºó[,cm]
"
"
"    cscopeµÄÖ÷Òª¹¦ÄÜÊÇÍ¨¹ıÍ¬µÄ×ÓÃüÁî"find"À´ÊµÏÖµÄ£¬
"    ¾ßÌå¿´±¾ .vimrc ÎÄ¼şÖĞµÄÓ³Éä£¬±ÈÈç ,cfs ±íÊ¾ cscope find s name£¬
"    Èç¹û¹â±êÃ»Í£ÁôÔÚ·ûºÅÉÏ£¬ĞèÊÖ¹¤ÊäÈë²éÕÒ×Ö¶Î£¬  
"    ,cwÁĞ³ö²éÕÒ×Ö¶Î³öÏÖµÄÁĞ±í£¬ ctrl+w ÇĞ»»´°¿Ú
"    cscope find µÄÓÃ·¨:
"    cs find c|d|e|f|g|i|s|t name
"        0 »ò s     ²éÕÒ±¾ C ·ûºÅ(¿ÉÒÔÌø¹ı×¢ÊÍ)
"        1 »ò g     ²éÕÒ±¾¶¨Òå
"        2 »ò d     ²éÕÒ±¾º¯Êıµ÷ÓÃµÄº¯Êı
"        3 »ò c     ²éÕÒµ÷ÓÃ±¾º¯ÊıµÄº¯Êı
"        4 »ò t     ²éÕÒ±¾×Ö·û´®
"        6 »ò e     ²éÕÒ±¾ egrep Æ¥ÅäÄ£Ê½
"        7 »ò f     ²éÕÒ±¾ÎÄ¼ş
"        8 »ò i     ²éÕÒ°üº¬±¾ÎÄ¼şµÄÎÄ¼ş

" vim³£ÓÃÃüÁî: (×î»ù±¾µÄÃüÁî¿ÉÏÂÔØ"vi/vim¼üÅÌÍ¼")
"   Ò»¡¢ÃüÁîÄ£Ê½ÏÂ( °´esc¼ü)
"      1. gd: Ñ¡ÖĞ¹â±êËùÔÚµÄµ¥´Ê. Í¨³£Ê¹ÓÃnÀ´Ìøµ½ÏÂÒ»¸öÏàÍ¬µ¥´Ê,NÎªÉÏÒ»¸ö
"      2. Ctrl-o: Ìø×ªµ½ÉÏÒ»´ÎµÄ¹â±êËùÔÚÎ»ÖÃ¡£ÓëÖ®¶ÔÓ¦µÄÊÇ: Ctrl-i
"      3. gf: ´ò¿ª¹â±êËùÔÚµÄÎÄ¼ş(ĞèÒªtaglistµÄÖ§³Ö)
"      4. gg: Ìøµ½ÎÄ¼şÍ·¡£ÓëÖ®¶ÔÓ¦µÄÊÇÎÄ¼şÎ²: G
"      5. f+'Ä³¸ö×ÖÄ¸': Ìø×ªµ½µ±Ç°µÄÄ³¸ö×ÖÄ¸ÉÏ
"      6. Shift-v: Ñ¡ÖĞµ±Ç°ĞĞ¡£Ctrl-v: Ñ¡ÖĞ×ÖÄ¸
"      7. Ñ¡ÖĞÄ£Ê½ÏÂ+=: Ñ¡ÖĞĞĞ¶ÔÆë
"      8. Ctrl+w+·½Ïò¼ü(h,l,j,k): ÆÁÄ»Ö®¼äÌø×ª
"      9. 0: ÈíĞĞÊ× Ïàµ±ÓÚ home
"      10. ye ¸´ÖÆÒ»¸öµ¥´Ê£¬de É¾³ıÒ»¸öµ¥´Ê¡£w µ½ÏÂÒ»¸öµ¥´ÊµÄ¿ªÍ·£¬e µ½µ±Ç°µ¥´ÊµÄ½áÎ²¡£
"      11. yy ¸´ÖÆÒ»ĞĞ£¬dd É¾³ıÒ»ĞĞ, ÃüÁîÇ°Ãæ¼ÓÊı×Ö¼´²Ù×÷¶àĞĞ¡£
"      12. zi ½«Òş²ØµÄ´úÂëĞĞ¶¼´ò¿ª
"      13. u: undo  ctrl+r: redo
"      14. :num  Ìøµ½Ä³Ò»ĞĞºÅ
"      15. % : ½«¹â±ê·ÅÔÚÀ¨ºÅÉÏ£¬Æ¥ÅäÀ¨ºÅÒÆ¶¯£¬°üÀ¨ (, {, [ 
"   ¶ş¡¢ÊäÈëÃüÁîÄ£Ê½ (ÃüÁîÄ£Ê½ÏÂ+Shift+:)
"      1. vs+filename: ´ò¿ªÎÄ¼ş,ÓëÏÖÓĞÎÄ¼şÉÏÏÂ·ÖÆÁ¡£×óÓÒ·ÖÆÁ: sv
"         ctrl+w+[num]+ +/-  µ÷Õû¸ß¶È£¬+ < > µ÷Õû¿í¶È
"      2. n,ms/regex/replace/gc: ½«nĞĞµ½mĞĞÖĞµÄÆ¥Åäµ½regexÕıÔòµÄ×Ö·û´®Ìæ»»³Éreplace
"      3. g!/pattern/d É¾³ı²»º¬pattern ×Ö·û´®µÄĞĞ¡£
"      4. set (no)list ¿ÉÒÔ¿´µ½ tab ^I¡¢^M¡¢$ ĞĞ½áÊø·û(ctrl+v+tab-->^I£¬ ctrl+v+M-->^M£¬ctrl+M-->$£©
"
"   Èı¡¢²åÈëÄ£Ê½ (i,a,I,A)
"      1. Ctrl-backspace: É¾³ı
"      2. ctrl+p, ctrl+n ¹Ø¼ü×Ö²¹Æë
   

" ²»¼ÓÔØ netrw,Ã»ÓĞ¶ÁĞ´ÍøÂçÎÄ¼şµÄĞèÇó£¬µ«ÕâÑù»áµ¼ÖÂ :E ÃüÁî²»¿ÉÓÃ£¨»ù±¾ÎŞÓÃ£©
" window manager ¿ÉÒÔÂú×ãÄ¿Â¼ä¯ÀÀºÍ´ò¿ª¶à¸öÎÄ¼şµÄĞèÇó
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

"ÉèÖÃÏÔÊ¾ĞĞÊı
set number  
" set nonu

"Get out of VI's compatible mode..
" ²»¼æÈİvi£¬·ñÔò»á¶ªÊ§ºÜ¶àvimµÄÌØĞÔ
set nocompatible

"Sets how many lines of history VIM har to remember
set history=7000

"Enable filetype plugin.¿ªÆôÎÄ¼ş×Ô¶¯Ê¶±ğ
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Enable syntax hl
syntax enable
"ÉèÖÃÑÕÉ«
if has("gui_running")
    "Í¼ĞÎ½çÃæµÄÉèÖÃ
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
Plugin 'fatih/vim-go'  " ÔÚ vim ÖĞ :PluginInstall °²×°vim-go
  
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
" ºº×ÖµÄÖ§³Ö -ÒÀÀµ£ºconfigure vimÊ±ĞèÒªÌí¼ÓÑ¡Ïî£º--enable-multibyte
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

"Set backspace. ÍË¸ñÊ±¿ÉÒÆ³ıËùÓĞ×Ö·û
set backspace=eol,start,indent

""""""""""""""""""""""""""""""
" Statusline×´Ì¬À¸
""""""""""""""""""""""""""""""
"Always hide the statusline
set laststatus=2
" !¸ĞÌ¾ºÅµÄÓÃ·¨: ¼û"help E127",Èç¹ûÖ®Ç°ÓĞ´Ëº¯Êı¶¨ÒåÔòÌæ»»µô
function! CurDir()
  let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
  return curdir
endfunction
" »ñ¡µ±Ç°¹¤³ÌÃû
function! ProjectDir()
  let projectDir = substitute(getcwd(), '.*/', "", "")
  return  projectDir
endfunction

"Format the statusline
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
let g:curdir=CurDir()
set statusline=%r%{g:curdir}%h\ %f\ %w\ %l/%L:%c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options.Ëõ½ø
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
" Ìí¼Óµ±Ç°Ä¿Â¼ tags
map <leader>ctl :call UpdateTag() <cr>
" °üº¬ÏµÍ³Í·ÎÄ¼ş, Ìí¼ÓÏµÍ³tags
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

"ÎÄ¼ş¸üĞÂÊ±×Ô¶¯¸üĞÂtag,cscope
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
" Ìí¼Ó¶Ôº¯ÊıµÄËµÃ÷
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cf :Dox<cr>
let g:DoxygenToolkit_licenseTag="My own license\<enter>" 
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK" 
let g:DoxygenToolkit_briefTag_pre = "Ãè  Êö: " 
let g:DoxygenToolkit_paramTag_pre = "²Î  Êı: " 
let g:DoxygenToolkit_returnTag =    "·µ»ØÖµ: " 
let g:DoxygenToolkit_briefTag_funcName = "no" 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"´´½¨ÎÄ¼şÊ±×Ô¶¯Ìí¼ÓÎÄ¼şµÄ×¢ÊÍ,c/c++ÓÉc.vim(¿ÉÒÔÍ¨¹ı~/.vim/c-support/templates/c-file-headerÎÄ¼şĞŞ¸ÄÑùÊ½)Íê³É
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
  call append(lnum, '    echo "¹¦ÄÜ: "' )
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
  call append(lnum, '#Àı×Ó' )
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
" c.vim:º¯Êı¡¢ÎÄ¼ş×¢ÊÍ
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ×Ô¶¯Ìí¼Óc/c++ÎÄ¼şÍ·×¢ÊÍ
let g:C_AuthorName = "s1mba"
"  map <leader>if :  Ìí¼Ócº¯Êı
"  map <leader>im :  Ìí¼Ómainº¯Êı
"  map <leader>cfu :  Ìí¼Óº¯Êı×¢ÊÍ
"  map <leader>cfr :  Ìí¼Ó×¢ÊÍ
"  map <leader>pd :  Ìí¼Óºê¶¨Òå

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" a.vim: cpp/hÎÄ¼şÖĞÇĞ»»
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ÔÚcpp/hÎÄ¼şÖĞÇĞ»»,Èç¹ûÃ»ÓĞ¶ÔÓ¦µÄÎÄ¼şÔò´´½¨
map <leader>a :A <cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"omnicppcomplet×Ô¶¯²¹È«¹¦ÄÜ Ö»Ö§³Övim7.0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ö§³Ö.->µÄ×Ô¶¯²¹È«

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tabÖÇÄÜÍê³É
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
"À¨ºÅÖÇÄÜÆ¥Åä,×Ô¶¯Ìí¼ÓÓÒÀ¨ºÅ
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
"ÖÇÄÜ×¢ÊÍ£¬Ö§³Ö¶àÖÖÎÄ¼ş¸ñÊ½ NERD_commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>cc :µ¥ĞĞ×¢ÊÍ
" map <leader>cm :¶àĞĞ×¢ÊÍ
" let NERDShutUp=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ÖÇÄÜ²¹È« OmniCppComplete 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("completeopt")
  set completeopt=longest,menu
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ºöÂÔ´óĞ¡Ğ´,¿ÉÓÃÓÚ²éÕÒ
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ¼Ç×¡ÉÏ´Î´ò¿ªµÄÎ»ÖÃ
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g'\"" |
  \ endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ÈíĞĞÊ×
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>0 ^
map 0 ^

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>m :!make <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ¹Ø±ÕÖÇÄÜÆ¥Åä´°¿Ú
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QuickFix ´°¿Ú. cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cw :cw <CR>
map <leader>cn :cn <CR>
map <leader>cp :cp <CR>

