set nocp " Vundle default
set noswapfile nobackup dir =~/tmp 
filetype off " Vundle default

set rtp+=~/.vim/bundle/Vundle.vim " Vundle default 
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'yggdroot/indentline'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/fzf'
Plugin 'sainnhe/everforest'
Plugin 'bfrg/vim-c-cpp-modern'
Plugin 'vim-airline/vim-airline'
Plugin 'SirVer/ultisnips' 
Plugin 'lervag/vimtex'
Plugin 'romainl/vim-cool'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'junegunn/goyo.vim'
Plugin 'luochen1990/rainbow'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()            

if has ('termguicolors')
   set termguicolors
endif

let g:everforest_better_performance = 1
let g:everforest_background = 'medium'

filetype plugin indent on " Vundle default
set hlsearch 
set incsearch
set wildmenu 
set background=dark
set et 
set ts=2
set shiftwidth=2
set softtabstop=2
set nu rnu
set nuw=10

if has('syntax')
 syntax enable             
 silent! colorscheme everforest
endif

autocmd User GoyoEnter set nu rnu

let g:tex_conceal = "" 
let g:vimtex_syntax_conceal_disable = 1
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_forward_search_on_start = 0
let g:vimtex_indent_on_ampersands = 0
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf'
set formatoptions-=cro 

inoremap vv <Esc>
cnoremap vv <Esc>
inoremap VV <Esc>
cnoremap cnoremap VV <Esc>

map <F3> :FZF<CR>
map <F2> :NERDTreeToggle<CR>
map <C-k> ddkkp
map <C-j> ddp
map <C-h> <C-wh>

nnoremap tt gT 
nnoremap <Space> <NOP>
xnoremap <Space> <NOP>
let mapleader = " "
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

map <C-n> <Plug>(easymotion-bd-f)
nmap <C-n> <Plug>(easymotion-overwin-f)

nmap <Leader>b <Plug>(easymotion-bd-b) " requires double press?
nmap <Leader>e <Plug>(easymotion-bd-e)
nmap <Leader>w <Plug>(easymotion-bd-w)

nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :tabclose<CR>
nnoremap <leader>f :FZF<CR>

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:rainbow_active = 1

setlocal spell 
set spelllang=en_gb 
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u 

" Initialize configuration dictionary
let g:fzf_vim = {}

let g:markdown_syntax_conceal = 0
let g:vim_json_syntax_conceal = 0

" let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_auto_trigger = 1
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
let g:UltiSnipsSnippetDirectories = ["my_snips"]
nnoremap <leader>us :call UltiSnips#RefreshSnippets()<CR>

let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_filetype_blacklist = {
    \ '.tex': 1,
    \ }
autocmd FileType tex let b:ycm_largefile=1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:airline#extensions#tabline#enabled = 1 

let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'!',
                \ 'Staged'    :'+',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'->',
                \ 'Unmerged'  :'=',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'o_O',
                \ }
