" Dracula Theme v1.2.0
"
" https://github.com/zenorocha/dracula-theme
"
" Copyright 2015, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dracula"

"hi TabLine ctermfg=84 ctermbg=236 cterm=NONE guifg=#666666 guibg=#3d3f49 gui=none
hi TabLineSel ctermfg=240 ctermbg=NONE cterm=NONE guifg=#808080 guibg=NONE gui=none
hi SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE guifg=#808080 guibg=bg gui=NONE
hi Cursor ctermfg=17 ctermbg=231 cterm=NONE guifg=#282a36 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=bold guifg=NONE guibg=#121212 gui=bold
hi CursorLineNR ctermfg=221 ctermbg=233 cterm=bold guifg=#ffdf5f guibg=#121212 gui=bold
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE
hi LineNr ctermfg=246 ctermbg=236 cterm=NONE guifg=#909194 guibg=#3d3f49 gui=NONE
hi VertSplit ctermfg=59 ctermbg=236 cterm=NONE guifg=#5f5f5f guibg=#64666d gui=NONE
hi MatchParen ctermfg=212 ctermbg=NONE cterm=underline guifg=#ff79c6 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=236 cterm=bold guifg=#f8f8f2 guibg=#64666d gui=bold
hi StatusLineNC ctermfg=231 ctermbg=236 cterm=bold guifg=#f8f8f2 guibg=#64666d gui=NONE
hi Pmenu ctermfg=NONE ctermbg=55 cterm=NONE guifg=NONE guibg=#5f6a8d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#cc0066 gui=NONE
hi IncSearch ctermfg=white ctermbg=161 cterm=NONE guifg=#282a36 guibg=#f1fa8c gui=NONE
hi Search ctermfg=white ctermbg=161 cterm=NONE guifg=white guibg=#d7005f gui=NONE
hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Folded ctermfg=61 ctermbg=235 cterm=NONE guifg=#6272a4 guibg=#282a36 gui=NONE
hi SignColumn ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
hi FoldColmun ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
hi Normal guifg=#f8f8f2 guibg=#282a36 gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Comment ctermfg=245 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=NONE gui=NONE
hi Conditional ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#468410 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b080b guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#243a5f gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Function ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi Identifier ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
hi Keyword ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Label ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi NonText ctermfg=231 ctermbg=NONE cterm=NONE guifg=#525563 guibg=#282a36 gui=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Operator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi PreProc ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi Statement ctermfg=lightblue ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi StorageClass ctermfg=117 ctermbg=NONE cterm=bold guifg=#8be9fd guibg=NONE gui=italic
hi String ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi Tag ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Todo ctermfg=61 ctermbg=NONE cterm=inverse,bold guifg=#6272a4 guibg=NONE gui=inverse,bold
hi Type guifg=#5fd7ff guibg=NONE gui=bold ctermfg=lightblue ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyFunction ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=203 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyControl ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyException ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi yamlKey ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi cssURL ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssClassName ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6be5fd guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi TabLineFill  ctermfg=84 ctermbg=236 cterm=NONE guifg=#333333 guibg=#3d3f49 gui=none

" Vim Script {{{
hi vimGroupName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimOption ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimHiCtermFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi vimHiGuiFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
" }}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Customize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Delimiter ctermfg=161 ctermbg=NONE cterm=NONE guifg=red guibg=NONE gui=NONE
hi Return guifg=#66d077 guibg=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=bold
hi BuiltInClass guifg=#66d077 guibg=NONE gui=NONE ctermfg=green ctermbg=NONE cterm=bold

" C
hi cType guifg=#5fd7ff guibg=NONE gui=bold ctermfg=lightblue ctermbg=NONE cterm=bold

" Java
hi javaOperator guifg=#66d077 guibg=NONE gui=NONE ctermfg=green ctermbg=NONE cterm=bold
hi javaSDKClass guifg=#66d077 guibg=NONE gui=NONE ctermfg=green ctermbg=NONE cterm=bold
hi javaType guifg=#5fd7ff guibg=NONE gui=bold ctermfg=lightblue ctermbg=NONE cterm=bold
hi javaClassDecl guifg=#5fd7ff guibg=NONE gui=bold ctermfg=lightblue ctermbg=NONE cterm=bold
hi javaScopeDecl guifg=#5fd7ff guibg=NONE gui=bold ctermfg=lightblue ctermbg=NONE cterm=bold
hi javaConditional guifg=#5fd7ff guibg=NONE gui=NONE ctermfg=lightblue ctermbg=NONE cterm=NONE
hi def link javaConstant Number

" JavaScript
hi javaScriptIdentifier guifg=#5fd7ff guibg=NONE gui=bold ctermfg=lightblue ctermbg=NONE cterm=bold
hi javaScriptFunction guifg=#5fd7ff guibg=NONE gui=bold ctermfg=lightblue ctermbg=NONE cterm=bold
hi javaScriptBraces guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi javaScriptNew guifg=#66d077 guibg=NONE gui=NONE ctermfg=green ctermbg=NONE cterm=NONE
hi def link javaScriptConditional Type
hi def link javaScriptNumber Number

" ObjC
hi objcCocoaClass guifg=#66d077 guibg=NONE gui=NONE ctermfg=green ctermbg=NONE cterm=bold
hi objcSubclass guifg=#66d077 guibg=NONE gui=NONE ctermfg=202 ctermbg=NONE cterm=bold
hi objcMethodSign guifg=#66d077 guibg=NONE gui=NONE ctermfg=82 ctermbg=NONE cterm=bold

"NERD Tree
hi def link NERDTreeBookmarksLeader Delimiter
hi def link NERDTreeOpenable Delimiter
hi def link NERDTreeClosable BuiltInClass

