"=== General Settings ==="
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a



"=== Plugin Manager ==="
call plug#begin()
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Color Schemes
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/itchyny/lightline.vim' " LightLine
Plug 'https://github.com/airblade/vim-gitgutter' " Vim-GitGutter
Plug 'https://github.com/rhysd/vim-clang-format' " Vim-Clang-Format
Plug 'https://github.com/junegunn/fzf.vim' " fzf-vim
set encoding=UTF-8
call plug#end()



"=== Plugin Options ==="
"Color Schemes"
:colorscheme molokai

"coc.nvim"
:set completeopt-=preview

"vim-gitgutter"
let g:gitgutter_map_keys = 0
let g:gitgutter_async = 0
let g:gitgutter_preview_win_floating = 1

"vim-clang-format"
let g:clang_format#auto_format = 1
let g:clang_format#auto_format_on_insert_leave = 1
let g:clang_format#command = '/usr/bin/clang-format'
let g:clang_format#style_options = { "BasedOnStyle": "LLVM", "Language": "Cpp", "Standard": "Latest", "AccessModifierOffset": -2, "AlignConsecutiveAssignments": "true", "AlignConsecutiveBitFields": "true", "AlignConsecutiveMacros": "true", "AlignEscapedNewlines": "Left", "AlignTrailingComments": "true", "AllowShortBlocksOnASingleLine": "Always", "AllowShortCaseLabelsOnASingleLine": "true", "AllowShortEnumsOnASingleLine": "true", "AllowShortFunctionsOnASingleLine": "All", "AllowShortIfStatementsOnASingleLine": "true", "AllowShortLoopsOnASingleLine": "true", "AlwaysBreakAfterReturnType": "None", "BreakBeforeBraces": "Allman", "BreakStringLiterals": "false", "ColumnLimit": 0, "ContinuationIndentWidth": 4, "Cpp11BracedListStyle": "true", "DeriveLineEnding": "false", "DerivePointerAlignment": "false", "FixNamespaceComments": "true", "IndentCaseLabels": "true", "IndentExternBlock": "AfterExternBlock", "IndentGotoLabels": "true", "IndentPPDirectives": "AfterHash", "IndentWidth": 4, "IndentWrappedFunctionNames": "true", "KeepEmptyLinesAtTheStartOfBlocks": "false", "MaxEmptyLinesToKeep": 6, "NamespaceIndentation": "All", "PointerAlignment": "Right", "SortIncludes": "false", "SortUsingDeclarations": "false", "SpaceAfterCStyleCast": "true", "SpaceAfterLogicalNot": "true", "SpaceAfterTemplateKeyword": "true", "SpaceBeforeAssignmentOperators": "true", "SpaceBeforeCpp11BracedList": "true", "SpaceBeforeCtorInitializerColon": "false", "SpaceBeforeInheritanceColon": "false", "SpaceBeforeParens": "ControlStatements", "SpaceBeforeRangeBasedForLoopColon": "true", "SpaceBeforeSquareBrackets": "false", "SpaceInEmptyBlock": "false", "SpaceInEmptyParentheses": "false", "SpacesBeforeTrailingComments": 4, "SpacesInAngles": "false", "SpacesInCStyleCastParentheses": "false", "SpacesInConditionalStatement": "false", "SpacesInContainerLiterals": "false", "SpacesInParentheses": "false", "SpacesInSquareBrackets": "false", "TabWidth": 4, "UseCRLF": "false", "UseTab": "Never" }

"vim-gitgutter"
map <F7> :GitGutterPrevHunk<CR>
map <F8> :GitGutterNextHunk<CR>
map <F10> :GitGutterStageHunk<CR>
map <F11> :GitGutterUndoHunk<CR>
map <F12> :GitGutterPreviewHunk<CR>

"fzf-vim"
map <C-O> :Files<CR>
map <C-W> :Buffers<CR>



"=== Key Mapping ==="
"Toggle wrapping"
nnoremap <A-z> :set wrap!<CR>

"Toggle highlight search"
nnoremap <F3> :set hlsearch!<CR>

"Toogle tab-to-space"
nnoremap <A-t> :set expandtab!<CR>

"Trim space at end of line"
nnoremap <A-x> :%s/\s\+$//e<CR>

"NERDTree"
nnoremap <C-E> :NERDTreeToggle<CR>
nnoremap <C-T> :TagbarToggle<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"



"=== AUTORUN COMMAND ==="
autocmd InsertLeave * GitGutter
autocmd TextChanged * GitGutter

