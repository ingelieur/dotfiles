call plug#begin('~/.local/share/nvim/plugged')

" junegunn/fzf.vim (Things you can do with fzf and Vim.)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ale (Asynchronous Lint Engine)
Plug 'dense-analysis/ale'

" coc.nvim (Intellisense engine for vim8 & neovim, full language server protocol support as VSCode)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-go (Go development plugin for Vim)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sebdah/vim-delve'

" vim-slumlord (Inline previews for Plantuml sequence diagrams. OMG!)
" Plug 'scrooloose/vim-slumlord'

" plantuml-previewer.vim (Vim / Neovim plugin for preview PlantUML)
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'

" vim-polyglot (A collection of language packs for Vim.)
Plug 'sheerun/vim-polyglot'

" emmet-vim
Plug 'mattn/emmet-vim'

" vim-fugitive (The best Git wrapper of all time.)
Plug 'tpope/vim-fugitive'

" nerdtree (A tree explorer plugin for vim.)
Plug 'scrooloose/nerdtree'

" defx.nvim (The dark powered file explorer implementation)
" Plug 'Shougo/defx.nvim'

" nerdtree-git-plugin (A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree.)
Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-surround (Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more.)
Plug 'tpope/vim-surround'

" jiangmiao/auto-pairs (Insert or delete brackets, parens, quotes in pair.)
Plug 'jiangmiao/auto-pairs'

"Vim plugin for intensely orgasmic commenting
Plug 'preservim/nerdcommenter'

" Yggdroot/indentLine (Displaying thin vertical lines at each indentation level for code indented with spaces.)
Plug 'Yggdroot/indentLine'

" Searchlight = Search + Highlight
" Plug 'PeterRincker/vim-searchlight'

" Themes
Plug 'haishanh/night-owl.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'

" vim-airline (Lean & mean status/tabline for vim that's light as air.)
Plug 'bling/vim-airline'

" vim airline themes (The official theme repository for vim-airline.)
Plug 'vim-airline/vim-airline-themes'

" wakatime (Vim plugin for automatic time tracking and metrics generated from your programming activity. )
Plug 'wakatime/vim-wakatime'

call plug#end()
