" File              : vim/SpaceVim.d.symlink/autoload/myspacevim.vim
" Author            : VyronLee <lwz_jz@hotmail.com>
" Date              : 2018/05/30 19:37
" Last Modified Date: 2018/05/30 19:38
" Last Modified By  : VyronLee <lwz_jz@hotmail.com>

let s:SYSTEM = SpaceVim#api#import('system')

if s:SYSTEM.isOSX
    let g:chromatica#libclang_path = '/usr/local/opt/llvm@5/lib'
elseif s:SYSTEM.isLinux
    let g:chromatica#libclang_path = '/usr/lib'
endif

" Put your omnisharp.exe path here
" let g:OmniSharp_server_path = $HOME . '/source/omnisharp-roslyn/omnisharp/OmniSharp.exe'
let g:OmniSharp_server_path = $HOME . '/source/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe'
" let g:OmniSharp_selector_ui = 'unite'
" let g:OmniSharp_server_use_mono = 1
let g:Omnisharp_start_server = 1
let g:OmniSharp_server_type = 'v1'
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

let g:NERDTreeWinPos = 'left'

let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12

let g:header_auto_add_header = 0
let g:header_field_author = 'VyronLee'
let g:header_field_author_email = 'lwz_jz@hotmail.com'
let g:header_field_timestamp_format = '%Y/%m/%d %H:%M'
