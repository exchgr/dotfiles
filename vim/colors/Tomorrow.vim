" Vim color file
" Converted from Textmate theme Tomorrow using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Tomorrow"

hi Cursor ctermfg=15 ctermbg=145 cterm=NONE guifg=#ffffff guibg=#aeafad gui=NONE
hi Visual ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d6d6 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#ededed gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#ededed gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#ededed gui=NONE
hi LineNr ctermfg=248 ctermbg=231 cterm=NONE guifg=#a6a6a6 guibg=#ededed gui=NONE
hi VertSplit ctermfg=251 ctermbg=251 cterm=NONE guifg=#cbcbcb guibg=#cbcbcb gui=NONE
hi MatchParen ctermfg=97 ctermbg=NONE cterm=underline guifg=#8959a8 guibg=NONE gui=underline
hi StatusLine ctermfg=239 ctermbg=251 cterm=bold guifg=#4d4d4c guibg=#cbcbcb gui=bold
hi StatusLineNC ctermfg=239 ctermbg=251 cterm=NONE guifg=#4d4d4c guibg=#cbcbcb gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d6d6 gui=NONE
hi IncSearch ctermfg=15 ctermbg=64 cterm=NONE guifg=#ffffff guibg=#718c00 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=64 ctermbg=NONE cterm=NONE guifg=#718c00 guibg=NONE gui=NONE
hi Folded ctermfg=102 ctermbg=15 cterm=NONE guifg=#8e908c guibg=#ffffff gui=NONE

hi Normal ctermfg=239 ctermbg=15 cterm=NONE guifg=#4d4d4c guibg=#ffffff gui=NONE
hi Boolean ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi Character ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi Comment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#8e908c guibg=NONE gui=NONE
hi Conditional ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi DiffAdd ctermfg=239 ctermbg=149 cterm=bold guifg=#4d4d4c guibg=#a1e85d gui=bold
hi DiffDelete ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f25454 guibg=NONE gui=NONE
hi DiffChange ctermfg=239 ctermbg=152 cterm=NONE guifg=#4d4d4c guibg=#b9cfe7 gui=NONE
hi DiffText ctermfg=239 ctermbg=74 cterm=bold guifg=#4d4d4c guibg=#729fcf gui=bold
hi ErrorMsg ctermfg=15 ctermbg=160 cterm=NONE guifg=#ffffff guibg=#c82829 gui=NONE
hi WarningMsg ctermfg=15 ctermbg=160 cterm=NONE guifg=#ffffff guibg=#c82829 gui=NONE
hi Float ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi Function ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi Identifier ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi Keyword ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi Label ctermfg=64 ctermbg=NONE cterm=NONE guifg=#718c00 guibg=NONE gui=NONE
hi NonText ctermfg=252 ctermbg=231 cterm=NONE guifg=#d1d1d1 guibg=#f6f6f6 gui=NONE
hi Number ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi Operator ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3e999f guibg=NONE gui=NONE
hi PreProc ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi Special ctermfg=239 ctermbg=NONE cterm=NONE guifg=#4d4d4c guibg=NONE gui=NONE
hi SpecialKey ctermfg=252 ctermbg=231 cterm=NONE guifg=#d1d1d1 guibg=#ededed gui=NONE
hi Statement ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi StorageClass ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi String ctermfg=64 ctermbg=NONE cterm=NONE guifg=#718c00 guibg=NONE gui=NONE
hi Tag ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi Title ctermfg=239 ctermbg=NONE cterm=bold guifg=#4d4d4c guibg=NONE gui=bold
hi Todo ctermfg=102 ctermbg=NONE cterm=inverse,bold guifg=#8e908c guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi rubyFunction ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=64 ctermbg=NONE cterm=NONE guifg=#718c00 guibg=NONE gui=NONE
hi rubyConstant ctermfg=178 ctermbg=NONE cterm=NONE guifg=#c99e00 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=64 ctermbg=NONE cterm=NONE guifg=#718c00 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi rubyInclude ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi rubyEscape ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi rubyControl ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi rubyOperator ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3e999f guibg=NONE gui=NONE
hi rubyException ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=178 ctermbg=NONE cterm=NONE guifg=#c99e00 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi erubyComment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#8e908c guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi htmlTag ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi htmlTagName ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi htmlArg ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8959a8 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi yamlAlias ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=64 ctermbg=NONE cterm=NONE guifg=#718c00 guibg=NONE gui=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi cssFunctionName ctermfg=61 ctermbg=NONE cterm=NONE guifg=#4271ae guibg=NONE gui=NONE
hi cssColor ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3e999f guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi cssClassName ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c82829 guibg=NONE gui=NONE
hi cssValueLength ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=208 ctermbg=NONE cterm=NONE guifg=#f5871f guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE