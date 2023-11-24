"""""""""""""""""
"""global configs

set t_Co=256
set encoding=utf-8

" set tab spaces
set tabstop=4
let mapleader=";"

" set maxmempattern
set mmp=100000
" take effect at once after config updated
" both of the following will work
"autocmd BufWritePost .vimrc source %
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" disable belling
set belloff=all

"enable spell
setlocal spell spelllang=en_us


""""""""""""""""""""""""
""" configuration of vim 

" detect file type
filetype on
" load plugins with corresponding file type
filetype plugin on

" keys for switching splitted window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" set keys to switch table
" Go to tab by number
" it's not so good with <leader> key
"noremap <leader>1 1gt
"noremap <leader>2 2gt
"noremap <leader>3 3gt
"noremap <leader>4 4gt
"noremap <leader>5 5gt
"noremap <leader>6 6gt
"noremap <leader>7 7gt
"noremap <leader>8 8gt
"noremap <leader>9 9gt
"noremap <leader>0 :tablast<cr>

" setup for go indent
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

" set markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"""""""""""""""""""
""" plugins loading

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=/Users/shaocf/workspace/go/bin/fzf

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'

" go tool
Plugin 'fatih/vim-go'
Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

" go tool - gotests
Plugin 'buoto/gotests-vim'

Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
" switch between .c/.cpp and .h
Plugin 'derekwyatt/vim-fswitch'
" bookmarks of code
Plugin 'kshenoy/vim-signature'
" tags of code
Plugin 'majutsushi/tagbar'

" 智能补全
Plugin 'ycm-core/YouCompleteMe', {'pinned': 1}

" buffer manage
Plugin 'fholgado/minibufexpl.vim'

" project files management
Plugin 'scrooloose/nerdtree'

" git related
Plugin 'tpope/vim-fugitive'

" markdown
" dev
Plugin 'gabrielelana/vim-markdown'
" Preview
Plugin 'JamshedVesuna/vim-markdown-preview'

Plugin 'junegunn/fzf', {'do': { -> fzf#install()}} 
Plugin 'junegunn/fzf.vim'

" update the Rg function to support flexible search
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always " . <q-args>, fzf#vim#with_preview(), <bang>0)

call vundle#end()

" markdown preview
let vim_markdown_preview_toggle=1

"filetype plugin indent on


" vim-go config

" gotests config
"let g:gotests_template_dir = '/home/user/templates/'

"""""""""""""""
""" color theme
colorscheme desert
"colorscheme solarized 
"colorscheme molokai


"""""""""""""""""
""" Asistent info

" status row
set laststatus=2
" show cursor location
set ruler
" show line number
set nu
" highlight current line and column 
set cursorline
set cursorcolumn
" highlight search result 
set hlsearch
" set theme of status
" looks like doesn't work
let g:Powerline_colorscheme='solarized256'

"""""""""""""""""""
""" go code
map <Leader>gi :GoInstall<cr>

"""""""""""""""""""

""" code highlight

syntax enable
syntax on

""" code indent

" indent with corresponding language
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" nathanaelkane/vim-indent-guides
" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" Yggdroot/indentLine
set conceallevel=1
let g:indentLine_conceallevel=1
let g:indentLine_setColors = 0
let g:indentLine_enabled = 1
let g:indentLine_char = '¦'

""" code fold

" fold code by indent or synax
"set foldmethod=indent
set foldmethod=syntax
"set foldmethod=manual
" close the fold when start vim 
set nofoldenable

""" switch between code and interface (head defination)
""" for c, c++ projects
nmap <silent> <Leader>sw :FSHere<cr>
"

""" config of tagbar 

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_right=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>st :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1


""" config of MiniBufExplorer
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>


""" config of Nerdtree
" start with vim
"autocmd vimenter * NERDTree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

""" config vim-fugitive
"git status
nnoremap <Leader>gs :Gstatus<CR>
"git blame
nnoremap <Leader>gbl :Gblame<CR> 


"""vimgo
"go imports
nnoremap <Leader>gi :GoImports<CR>
"go format
nnoremap <Leader>gf :GoFmt<CR>
"go implements
nnoremap <Leader>gm :GoImplements<CR>
"go referrers
nnoremap <Leader>gr :GoReferrers<CR>
" GoSameIds
nnoremap <Leader>gs :GoSameIds<CR>
"go spell check
let g:go_highlight_string_spellcheck=1


"""""""""""""""""""
"
"" set up pathogen
"call pathogen#infect()


"""""""""""""""""""""""""""""""""""""
" config for ctrlp.vim
"
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif
"let g:ctrlp_map = '<c-p>'
"
"



""""""""""""""""""""""""""""""""""""
" set paste and nopaste automatically with tmux

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction



""""""""""""""""""""""""""""""""""""
" key maps
nmap <Leader>cp :let @" = expand("%")<cr>
