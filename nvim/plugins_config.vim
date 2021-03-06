" ========== Theme ==========
set background=dark
" colorscheme nord
" colorscheme night-owl
" let g:enable_bold_font = 1
" let g:enable_italic_font = 1
" colorscheme OceanicNext
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
colorscheme palenight
let g:palenight_terminal_italics=1

" ========== nerdtree ==========
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeAutoDeleteBuffer = 1
nmap <Leader>nt :NERDTree<cr>

" =========== fugitive ===========
set diffopt+=vertical
"git status
nmap <leader>gs :G<CR>
"solving gitdiff
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>

" ========== indentLine ==========
" let g:indentLine_char = '┆'
" let g:indentLine_setColors = 0
let g:indentLine_concealcursor = 'nc' " to solve concealed texts when editing markdown

" ========== vim-go ==========
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_fmt_fail_silently = 1 " Let neomake show errors instead
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
" let g:go_auto_sameids = 1
let g:go_fmt_experimental = 1

" ========== vim-delve ==========
" let g:delve_backend = "native"

" ========== ale ==========
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
let g:ale_linters = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'jsx': ['eslint','stylelint'],
      \ 'typescript': ['eslint', 'prettier', 'tslint'],
      \ 'reason': ['reason-language-server'],
      \ 'go': ['gopls']
\ }
" let g:ale_linters = {
"       \ 'javascript': ['eslint'],
"       \ 'jsx': ['eslint','stylelint'],
"       \ 'typescript': ['eslint', 'tslint'],
"       \ 'reason': ['reason-language-server'],
"       \ 'go': ['gopls']
" \ }
let g:ale_linter_aliases = {'jsx': ['css', 'javascript'], 'typescriptreact': 'typescript'}
let g:ale_fixers = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'typescript': ['tslint', 'prettier'],
      \ 'typescriptreact': ['tslint', 'prettier'],
      \ 'reason': ['refmt']
\}
" let g:ale_fixers = {
"       \ 'javascript': ['eslint'],
"       \ 'typescript': ['tslint'],
"       \ 'typescriptreact': ['tslint'],
"       \ 'reason': ['refmt']
" \}
let g:ale_list_window_size = 5
let g:ale_set_highlights = 0
let g:ale_reason_ls_executable='/home/dev/reason-language-server'
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"let g:ale_open_list = 1
let g:ale_javascript_eslint_use_global = 1
let g:ale_fix_on_save = 1
nmap <silent> [r <Plug>(ale_previous_wrap)
nmap <silent> ]r <Plug>(ale_next_wrap)
nmap <Leader>af :ALEFix<cr>

" ========== fzf.vim ==========
nmap ; :Buffers<cr>
nmap <Leader>r :History<cr>
nmap <Leader>f :Files<cr>
nmap <Leader>F :GFiles<cr>
nmap <Leader>a :Rg<cr>
nmap <Leader>li :Lines<cr>
nmap <Leader>lo :BLines<cr>
" floating fzf window
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" Use rg over grep
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
endif

" https://robots.thoughtbot.com/faster-grepping-in-vim
" bind <leader>aw to grep word under cursor
nnoremap <Leader>aw :Rg <C-R>=expand("<cword>")<CR><CR>

" let g:rg_command = '
"   \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
"   \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
"   \ -g "!{.git,node_modules,vendor}/*" '
" 
" command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

" ========== coc ==========
" extensions
let g:coc_global_extensions = ['coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-json', 'coc-omnisharp']
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Remap for format selected region
vmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" ========== vim-airline ==========
set laststatus=2
let g:airline_theme= 'night_owl'
let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep = '▶'
  let g:airline_left_alt_sep = '»'
  let g:airline_right_sep = '◀'
  let g:airline_right_alt_sep = '«'
  let g:airline#extensions#branch#prefix = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol = 'ρ'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
