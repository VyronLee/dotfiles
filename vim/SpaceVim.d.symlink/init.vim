set nowrap

" let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 0
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_enable_neomake = 1
let g:spacevim_snippet_engine = 'ultisnips'
let g:spacevim_buffer_index_type = 1
let g:spacevim_default_indent = 4
let g:spacevim_max_column = 80
let g:spacevim_relativenumber = 1
let g:spacevim_colorscheme = 'nord'
let g:spacevim_filemanager = 'nerdtree'
let g:spacevim_github_username = 'VyronLee'
let g:spacevim_enable_ycm = 0
let g:spacevim_keep_server_alive = 1

let g:spacevim_custom_plugins = [
    \ ['arcticicestudio/nord-vim'],
    \ ['nathanaelkane/vim-indent-guides'],
\ ]

let g:spacevim_disabled_plugins = [
    \ ['floobits-neovim'],
\ ]

call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#csharp')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell')
call SpaceVim#layers#load('tools#screensaver')
call SpaceVim#layers#load('tags')
call SpaceVim#layers#load('git')

let g:deoplete#auto_complete_delay = 150

let g:chromatica#libclang_path = '/usr/local/opt/llvm@4/lib'

let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:omnicomplete_fetch_full_documentation = 1

let g:snips_author = 'VyronLee'
let g:snips_email = 'lwz_jz@hotmail.com'
let g:snips_company = 'Xunshantec Ltd.'
let g:snips_license = 'Apache License 2.0'

let g:UltiSnipsSnippetDirectories = ["UltiSnips", "custom_snippets"]
