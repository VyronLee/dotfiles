" File              : /Users/vyronlee/.SpaceVim.d/init.vim
" Author            : VyronLee <lwz_jz@hotmail.com>
" Date              : 07.04.2018
" Last Modified Date: 2018/04/07 Apr:44
" Last Modified By  : VyronLee <lwz_jz@hotmail.com>
set nowrap

" let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_enable_neomake = 1
"let g:spacevim_snippet_engine = 'ultisnips'
let g:spacevim_buffer_index_type = 1
let g:spacevim_default_indent = 4
let g:spacevim_max_column = 80
let g:spacevim_relativenumber = 1
let g:spacevim_colorscheme = 'nord'
let g:spacevim_filemanager = 'nerdtree'
let g:spacevim_github_username = 'VyronLee'
let g:spacevim_enable_ycm = 0
let g:spacevim_enable_guicolors = 1
let g:spacevim_keep_server_alive = 1

let g:spacevim_custom_plugins = [
    \ ['arcticicestudio/nord-vim'],
    \ ['nathanaelkane/vim-indent-guides'],
    \ ['alpertuna/vim-header'],
\ ]

let g:spacevim_disabled_plugins = [
    \ ['floobits-neovim'],
\ ]

call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#csharp')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('shell')
call SpaceVim#layers#load('tags')
call SpaceVim#layers#load('git')
call SpaceVim#layers#load('unite')

let s:SYSTEM = SpaceVim#api#import('system')

if s:SYSTEM.isOSX
    let g:chromatica#libclang_path = '/usr/local/opt/llvm@5/lib'
    let g:deoplete#sources#clang#executable = '/usr/local/opt/llvm@5/bin/clang'
elseif s:SYSTEM.isLinux
    let g:chromatica#libclang_path = '/usr/lib/llvm-5.0/lib'
    let g:deoplete#sources#clang#executable = '/usr/bin/clang-5.0'
endif

let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:header_field_author = 'VyronLee'
let g:header_field_author_email = 'lwz_jz@hotmail.com'
let g:header_field_timestamp_format = '%Y/%m/%d %H:%M'
