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
let g:clang_format#style_options = {"Language": "Cpp", "AccessModifierOffset": -2, "AlignAfterOpenBracket": "Align", "AlignArrayOfStructures": "Right", "AlignConsecutiveMacros": "Consecutive", "AlignConsecutiveAssignments": "Consecutive", "AlignConsecutiveBitFields": "Consecutive", "AlignConsecutiveDeclarations": "Consecutive", "AlignEscapedNewlines": "Left", "AlignOperands": "Align", "AlignTrailingComments": "true", "AllowAllArgumentsOnNextLine": "true", "AllowAllParametersOfDeclarationOnNextLine": "true", "AllowShortEnumsOnASingleLine": "true", "AllowShortBlocksOnASingleLine": "Always", "AllowShortCaseLabelsOnASingleLine": "true", "AllowShortFunctionsOnASingleLine": "All", "AllowShortLambdasOnASingleLine": "All", "AllowShortIfStatementsOnASingleLine": "AllIfsAndElse", "AllowShortLoopsOnASingleLine": "true", "AlwaysBreakAfterReturnType": "None", "AlwaysBreakBeforeMultilineStrings": "false", "AlwaysBreakTemplateDeclarations": "Yes", "AttributeMacros": [], "BinPackArguments": "true", "BinPackParameters": "true", "BreakBeforeBinaryOperators": "All", "BreakBeforeConceptDeclarations": "true", "BreakBeforeBraces": "Attach", "BreakBeforeInheritanceComma": "false", "BreakInheritanceList": "AfterColon", "BreakBeforeTernaryOperators": "true", "BreakConstructorInitializersBeforeComma": "false", "BreakConstructorInitializers": "AfterColon", "BreakStringLiterals": "false", "ColumnLimit": 0, "CompactNamespaces": "false", "ConstructorInitializerIndentWidth": 4, "ContinuationIndentWidth": 4, "Cpp11BracedListStyle": "true", "DeriveLineEnding": "false", "DerivePointerAlignment": "false", "DisableFormat": "false", "EmptyLineAfterAccessModifier": "Never", "EmptyLineBeforeAccessModifier": "Always", "FixNamespaceComments": "true", "ForEachMacros": ["foreach", "Q_FOREACH", "BOOST_FOREACH"], "IfMacros": [], "IncludeBlocks": "Preserve", "IncludeIsMainRegex": "", "IncludeIsMainSourceRegex": "", "IndentAccessModifiers": "false", "IndentCaseLabels": "true", "IndentCaseBlocks": "false", "IndentGotoLabels": "true", "IndentPPDirectives": "AfterHash", "IndentExternBlock": "AfterExternBlock", "IndentRequires": "true", "IndentWidth": 4, "IndentWrappedFunctionNames": "true", "InsertTrailingCommas": "None", "KeepEmptyLinesAtTheStartOfBlocks": "false", "LambdaBodyIndentation": "Signature", "MacroBlockBegin": "", "MacroBlockEnd": "", "MaxEmptyLinesToKeep": 6, "NamespaceIndentation": "All", "PointerAlignment": "Right", "PPIndentWidth": -1, "ReferenceAlignment": "Pointer", "ReflowComments": "true", "ShortNamespaceLines": 0, "SortIncludes": "Never", "SortUsingDeclarations": "false", "SpaceAfterCStyleCast": "true", "SpaceAfterLogicalNot": "true", "SpaceAfterTemplateKeyword": "true", "SpaceBeforeAssignmentOperators": "true", "SpaceBeforeCaseColon": "false", "SpaceBeforeCpp11BracedList": "true", "SpaceBeforeCtorInitializerColon": "false", "SpaceBeforeInheritanceColon": "false", "SpaceBeforeParens": "ControlStatements", "SpaceAroundPointerQualifiers": "Both", "SpaceBeforeRangeBasedForLoopColon": "true", "SpaceInEmptyBlock": "false", "SpaceInEmptyParentheses": "false", "SpacesBeforeTrailingComments": 4, "SpacesInAngles": "Never", "SpacesInConditionalStatement": "false", "SpacesInContainerLiterals": "false", "SpacesInCStyleCastParentheses": "false", "SpacesInLineCommentPrefix": {"Minimum": 1, "Maximum": -1}, "SpacesInParentheses": "false", "SpacesInSquareBrackets": "false", "SpaceBeforeSquareBrackets": "false", "BitFieldColonSpacing": "None", "Standard": "Latest", "StatementAttributeLikeMacros": [], "StatementMacros": [], "TabWidth": 4, "UseCRLF": "false", "UseTab": "Never", "WhitespaceSensitiveMacros": []}

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

