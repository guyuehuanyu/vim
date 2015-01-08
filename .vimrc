set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'Valloric/YouCompleteMe'
"
Bundle 'sukima/xmledit'
"Bundle 'sjl/gundo.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 'SirVer/ultisnips'
"Bundle 'scrooloose/syntastic'
"Bundle 't9md/vim-quickhl'
"Bundle 'scrooloose/nerdcommenter'
"" My bundles here:  
" original repos on GitHub  
"Bundle 'tpope/vim-fugitive'  
"Bundle 'Lokaltog/vim-easymotion'  
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
"Bundle 'tpope/vim-rails.git'  
" vim-scripts repos  
"Bundle 'L9'  
"Bundle 'FuzzyFinder'  
" non-GitHub repos  
" Git repos on your local machine (i.e. when working on your own plugin)  
"Bundle 'scrooloose/syntastic'
"
"" Script
Bundle 'sketch.vim'
Bundle 'a.vim'
"Bundle 'c.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'vim-scripts/cscope.vim'
"Bundle 'msanders/snipmate.vim'
Bundle 'guyuehuanyu/snipmate.vim'
Bundle 'jgm/CommonMark'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
"Bundle 'bling/vim-airline'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'itchyny/calendar.vim'
Bundle 'powerline/powerline'
Bundle 'idbrii/vim-man'
"Bundle 'vim-scripts/EasyGrep'
"Bundle 'mbbill/echofunc'
"Bundle 'vim-scripts/echofunc.vim'
"Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/TxtBrowser'
Bundle 'guyuehuanyu/vimgdb-for-vim7.4'
"Bundle 'vim-scripts/winmanager--Fox'
"Bundle 'vim-scripts/VisIncr'
"Bundle 'wesleyche/SrcExpl'
"Bundle 'vim-scripts/vimgdb'
"Bundle 'SirVer/ultisnips'
"Bundle 'godlygeek/tabular'
"Bundle 'vim-scripts/snippets.vim'
Bundle 'vimcn/NERD_Commenter.cnx'
Bundle 'vimcn/NERD_tree.vim.cnx'
Bundle 'vimcn/taglist.vim.cnx'
Bundle 'vimcn/bufexplorer.vim.cnx'
Bundle 'vimcn/snipMate.vim.cnx'
Bundle 'vimcn/ctrlp.cnx'
"Bundle 'ervandew/supertab'
"Bundle 'upfile'
"括号自动匹配
" NERD的中文文档和脚本
"bufexplorer使用说明 \be \bs \bv
let g:bufExplorerShowTabBuffer=1

filetype plugin indent on

set tags+=./tags
"set tags+=/vobs/sw/ecomps/3rdparty/tags
"set tags+=/vobs/sw/ecomps/system/tags
"set tags+=/vobs/sw/ecomps/sc/tags
"set tags+=/vobs/sw/ecomps/lc/tags
"set tags+=/usr/include/tags

" ************** VIM setting ***************"{{{
"set autochdir
set   textwidth=80
set   wildignore=*.bak,*.o,*.e,*~
set   wildmenu
set   wildmode=list:longest,full  "改变tab模式
set   smartindent
set   smartcase
set   whichwrap=h,l
set nowrap   " 设置是否换行
set   guioptions-=T
set   guioptions-=m
set   guioptions-=r
set   guioptions-=l
set   helpheight=10
set   cindent
set   backspace=indent,eol,start
set   number
set   pumheight=10
set   scrolloff=5
syntax enable
syntax on
au BufRead,BufNewFile *.txt setlocal ft=txt
set    mouse=a          " -- 打开mouse 命令、输入、导航都激活鼠标的使用
set    tabstop=4        " -- 设置tab默认为4个空格 --
"set    softtabstop=4    " -- 桥如tab所站的空格的个数 --
set    nu               " -- vim窗口左侧显示行号 --
set    ruler            " -- 在vim底窗口显示当前光标位置
set    hlsearch         " -- 设置搜索高亮
set    incsearch        " -- 逐字搜索
set    mouse=a          " -- 打开mouse 命令、输入、导航都激活鼠标的使用
"set    expandtab        " -- 将输入的tab转换为空格
autocmd FileType c,cpp set expandtab
set   shiftwidth=4
set   showcmd "显示命令在状态栏 
set   autowrite "自动保存在执行make或者next的时候 
set   foldenable "使能折叠 
set   foldmethod=marker "记住折叠
set   history=100

set   laststatus=2   " 使得打开时在中间位置
if has("autocmd") " 自动打开跳转到上次的光标位置
  au BufReadPost * 
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \     exe "normal g'\"" |
  \ endif
endif
" ****************************************************"}}}
" ************** 屏幕跳转 ***************"{{{
nnoremap <C-h> :wall<CR><C-W>h  
nnoremap <C-j> :wall<CR><C-W>j
nnoremap <C-k> :wall<CR><C-W>k
nnoremap <C-l> :wall<CR><C-W>l
inoremap <C-h> <Esc>:wall<C-W>h
inoremap <C-j> <Esc>:wall<C-W>j
inoremap <C-k> <Esc>:wall<C-W>k
inoremap <C-l> <Esc>:wall<C-W>l
" ************** 屏幕切换 \ + Ctrl + hjlk ***************
let mapleader='\'
nnoremap <leader><C-H> :wall<CR><C-W>H
nnoremap <leader><C-J> :wall<CR><C-W>J
nnoremap <leader><C-K> :wall<CR><C-W>K
nnoremap <leader><C-L> :wall<CR><C-W>L
inoremap <leader><C-H> <Esc>:wall<C-W>H
inoremap <leader><C-J> <Esc>:wall<C-W>J
inoremap <leader><C-K> <Esc>:wall<C-W>K
inoremap <leader><C-L> <Esc>:wall<C-W>L
" **********************************************"}}}
" ************** Taglist setting ***************"{{{
let g:Tlist_Ctags_Cmd='ctags'        " 设置ctags的路径，在PATH路径即可
let g:Tlist_Show_One_File=1          " 不同时显示多个文件的tag，只显示当前文件的
let g:Tlist_Exit_OnlyWindow=1        " 如何taglist窗口是最后一个窗口，则退出vim
let g:Tlist_Process_File_Always=1    " 实时更新tags
let g:Tlist_WinWidth=25              " 设置宽度
let g:Tlist_Auto_Highlight_Tag=1
let g:Tlist_Enable_Fold_Column=0
let g:Tlist_Auto_Update=1
let g:Tlist_Auto_Open=1              " 启动VIM，自动打开taglist窗口
nmap  <F2> :TlistToggle<CR>          " 快捷打开Taglist窗口
"let g:Tlist_WinHigh=25              " 设置高度
" ***********************************************"}}}
" ************** NER_tree setting ***************"{{{
nmap  <F3> :NERDTreeToggle<CR>       " 快捷打开NERDTree窗口
let g:NERDTreeWinPos="right"         " 右侧显示NERDTree窗口
let g:NERDTreeWinSize=25             "设置宽度 
let g:NERDTreeSortOrder=['/*/$','/*.c$','/*.cpp$','/*.h$','/*.o','*']
let g:NERDTreeIgnore=['/*.vim$']          "不显示制定的类型文件 
let g:NERDChristmasTree=1
let g:NERDTreeAutoCenter=1
let g:NERDTreeBookmarksFile='./.NerdBookmarks.txt'
let g:NERDTreeMouseMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowFiles=1
let g:NERDTreeShowHidden=0
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos='right'
let g:NERDTreeHijackNetrw=1
"let loaded_nerd_tree            不使用NerdTree脚本
"let NERDChristmasTree           让Tree把自己给装饰得多姿多彩漂亮点
"let NERDTreeAutoCenter          控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
"let NERDTreeAutoCenterThreshold 与NERDTreeAutoCenter配合使用
"let NERDTreeCaseSensitiveSort   排序时是否大小写敏感
"let NERDTreeChDirMode           确定是否改变Vim的CWD
"let NERDTreeHighlightCursorline 是否高亮显示光标所在行
"let NERDTreeHijackNetrw         是否使用:edit命令时打开第二NerdTree
"let NERDTreeIgnore              默认的“无视”文件
"let NERDTreeBookmarksFile       指定书签文件
"let NERDTreeMouseMode           指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
"let NERDTreeQuitOnOpen          打开文件后是否关闭NerdTree窗口
"let NERDTreeShowBookmarks       是否默认显示书签列表
"let NERDTreeShowFiles           是否默认显示文件
"let NERDTreeShowHidden          是否默认显示隐藏文件
"let NERDTreeShowLineNumbers     是否默认显示行号
"let NERDTreeSortOrder           排序规则
"let NERDTreeStatusline          窗口状态栏
"let NERDTreeWinPos              窗口位置（'left' or 'right'）
"let NERDTreeWinSize             窗口宽
" ********************************************"}}}
" ************** cscope setting **************"{{{
if has("cscope")
	set csto=1
	set cst
    set nocsverb
    autocmd FileType * set cscopequickfix=s-,c-,d-,i-,t-,e-,f-
    if filereadable("cscope.out")
		cs add cscope.out
    endif
	if filereadable(".cscope")
		source .cscope
    endif
    set csverb
	set cscopeverbose   "显示消息当其他cscope db加入时
endif
"set nocst
" plugin shortcuts
function! RunShell(Msg, Shell)
	echo a:Msg . '...'
	call system(a:Shell)
	echon 'done'
endfunction
nmap <F12> :call RunShell("Generate cscope", "find  $(pwd) -name \"*.c\" -or -name \"*.h\" -or -name \"*.s\" > cscope.files;cscope -bkq -i cscope.files; ")<cr>:cs add cscope.out<cr>
nmap <leader>sa :cs add cscope.out<cr>
" 查找Ｃ语言符号，即查找函数名、宏、枚举值等出现的地方
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<cr><cr>
" 查找函数、宏、枚举等定义的位置，类似ｃｔａｇｓ所提供的功能
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<cr><cr>
" 查找本函数调用的函数
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<cr><cr>:call CWToggle()<CR>
" 查找指定的字符串
nmap <leader>st :cs find t <C-R>=expand("<cword>")<cr><cr>
" 查找egrep模式，相当于egrep功能，但查找速度快多了
nmap <leader>se :cs find e <C-R>=expand("<cword>")<cr><cr>
" 查找并打开文件，类似viｍ的find功能呢个
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<cr><cr>
" 查找包含本文件的文件
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<cr><cr>
"nmap <leader>zz <C-w>o
"nmap <leader>gs :GetScripts<cr>
" **************************************"}}}
" ************** 便捷设置 **************"{{{
vmap th ^
vmap tl $
map th ^
map tl $
inoremap <C-]> <C-X><C-]>
inoremap <C-F> <C-X><C-F>
inoremap <C-D> <C-X><C-D>
inoremap <C-L> <C-X><C-L>
inoremap <C-I> <C-X><C-I>
"整行补全                        CTRL-X CTRL-L
"根据当前文件里关键字补全        CTRL-X CTRL-N
"根据字典补全                    CTRL-X CTRL-K***********************
"根据同义词字典补全              CTRL-X CTRL-T
"根据头文件内关键字补全          CTRL-X CTRL-I
"根据标签补全                    CTRL-X CTRL-]
"补全文件名                      CTRL-X CTRL-F
"补全宏定义                      CTRL-X CTRL-D
"补全vim命令                     CTRL-X CTRL-V
"用户自定义补全方式              CTRL-X CTRL-U
"拼写建议                        CTRL-X CTRL-S 
" **************************************"}}}
" ************** YouCompleteMe setting **************"{{{
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '<<'
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt=longest,menu
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
"inoremap <expr><CR>       pumvisible() ? '<C-y>' : '<CR>'  "回车即选中当前项
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
"let g:ycm_cache_omnifunc=1  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/.ycm_extra_conf.py'
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_tags_files=1                 " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion=2                     " 从第2个键入字符就开始罗列匹配项
nmap <leader>gd :YcmDiags<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"**********************************************"}}}
" ************** EasyGrep setting **************"{{{
let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak, tags, *.la, *.map, *.bin, *.so"
" ******************************************"}}}
map  <F4> :call ToggleSketch()<CR>          " 快捷打开画图窗口
map  <F10> :call RunShell("Generate tags", "ctags --c-kinds=+px --fields=+lKSz -R --extra=+q")<CR>
let g:cw_flag = 0
function! CWToggle()
	if g:cw_flag == 0
		:cw
		exe "normal \<c-w>J"
		let g:cw_flag = 1
	else
		:ccl
		let g:cw_flag = 0
	endif
endfunction
map <leader>cw :call CWToggle()<CR>

map  <F7> :run macros/gdb_mappings.vim<CR><F7><CR>
map  <F8> <C-K>:bel 20vsplit gdb-variables<CR><C-J>
":bel 20vsplit gdb-variables<CR>
"let g:EchoFuncKeyNext='<F9>'
"let g:EchoFuncShowOnStatus = 1
