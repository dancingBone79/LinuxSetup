source $VIMRUNTIME/defaults.vim

set nocompatible

behave mswin

set go=
"
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
"let $LANG = 'zh_CN.UTF-8'

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,utf-16,ucs-bom,prc
set fileencoding=utf-8


set tabstop=4
set shiftwidth=4
set smarttab

set nobackup
set noswapfile

set foldlevelstart=99

set t_Co=256
colo evening
set list
set listchars=tab:>-
hi SpecialKey ctermfg=237


" 编码设置
if has("gui_running") || has("unix")
    set encoding=utf-8 " 设置vim内部使用的字符编码
    " lang messages zh_CN.UTF-8 " 解决consle输出乱码
else
    set encoding=chinese " 设置命令提示符下vim不乱码
    set termencoding=chinese     "终端下的编码，对gvim来说没有必要设置
endif
 
" 在图形界面和终端的配色方案、字体
if has("gui_running")
    "set columns=78 lines=18    "设置gui默认界面大小
    if has("unix")
        "colorscheme grey2
        set guifont=Monospace\ 13
        set guifontwide=KaiTi\ 14
    elseif has("win32")
        "colorscheme asu1dark
        set guifontwide=NSimSun:h12 " guifontwide只有在encoding=utf-8时才生效
		set guifont=Consolas:h11:cANSI
    endif
endif

"augroup AutoSaveFolds
"  autocmd!
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent loadview
"augroup END



set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

autocmd BufNewFile,BufRead *.vb set ft=vbnet

let g:fencview_autodetect=1
set is
set ic
set hlsearch
set nocompatible
set showcmd
set so=2
set sidescroll=3
set selectmode=
set display=lastline
set synmaxcol=400

set smartcase

" 如果X服务，则VIM会默认读取X服务器的剪贴板，在此禁止
" https://stackoverflow.com/questions/14635295/vim-takes-a-very-long-time-to-start-up
set clipboard=exclude:.*





" 上一行下一行是jk，
" 下拉一行上移一行是ctrl-j, ctrl-k，保持光标行不变
map <C-j> <C-e>
noremap <C-k> <C-y>

" 增加数字 alt+a，减少数字alt+x
:nnoremap <A-a> <C-a>
:nnoremap <A-x> <C-x>
