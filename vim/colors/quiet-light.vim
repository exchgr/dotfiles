" Vim color file
" Converted from Textmate theme Quiet Light using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Quiet Light"

hi Cursor ctermfg=231 ctermbg=0 cterm=NONE guifg=#f5f5f5 guibg=#000000 gui=NONE
hi Visual ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#c9d0d9 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e2e2e2 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e2e2e2 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e2e2e2 gui=NONE
hi LineNr ctermfg=246 ctermbg=254 cterm=NONE guifg=#949494 guibg=#e2e2e2 gui=NONE
hi VertSplit ctermfg=250 ctermbg=250 cterm=NONE guifg=#bdbdbd guibg=#bdbdbd gui=NONE
hi MatchParen ctermfg=68 ctermbg=NONE cterm=underline guifg=#4b83cd guibg=NONE gui=underline
hi StatusLine ctermfg=236 ctermbg=250 cterm=bold guifg=#333333 guibg=#bdbdbd gui=bold
hi StatusLineNC ctermfg=236 ctermbg=250 cterm=NONE guifg=#333333 guibg=#bdbdbd gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#c9d0d9 gui=NONE
hi IncSearch ctermfg=231 ctermbg=64 cterm=NONE guifg=#f5f5f5 guibg=#448c27 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi Folded ctermfg=248 ctermbg=231 cterm=NONE guifg=#aaaaaa guibg=#f5f5f5 gui=NONE

hi Normal ctermfg=236 ctermbg=231 cterm=NONE guifg=#333333 guibg=#f5f5f5 gui=NONE
hi Boolean ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi Character ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi Comment ctermfg=248 ctermbg=NONE cterm=NONE guifg=#aaaaaa guibg=NONE gui=italic
hi Conditional ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi Constant ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi Define ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi DiffAdd ctermfg=236 ctermbg=149 cterm=bold guifg=#333333 guibg=#9fe65b gui=bold
hi DiffDelete ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f05252 guibg=NONE gui=NONE
hi DiffChange ctermfg=236 ctermbg=152 cterm=NONE guifg=#333333 guibg=#b4cae2 gui=NONE
hi DiffText ctermfg=236 ctermbg=74 cterm=bold guifg=#333333 guibg=#729fcf gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi Function ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi Identifier ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi Keyword ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi Label ctermfg=64 ctermbg=NONE cterm=NONE guifg=#448c27 guibg=NONE gui=NONE
hi NonText ctermfg=248 ctermbg=188 cterm=NONE guifg=#aaaaaa guibg=#ebebeb gui=NONE
hi Number ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi Operator ctermfg=243 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi PreProc ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi Special ctermfg=236 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE
hi SpecialKey ctermfg=248 ctermbg=254 cterm=NONE guifg=#aaaaaa guibg=#e2e2e2 gui=NONE
hi Statement ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi StorageClass ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi String ctermfg=64 ctermbg=NONE cterm=NONE guifg=#448c27 guibg=NONE gui=NONE
hi Tag ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi Title ctermfg=236 ctermbg=NONE cterm=bold guifg=#333333 guibg=NONE gui=bold
hi Todo ctermfg=248 ctermbg=NONE cterm=inverse,bold guifg=#aaaaaa guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=97 ctermbg=NONE cterm=bold guifg=#7a3e9d guibg=NONE gui=bold
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi rubyFunction ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi rubyConstant ctermfg=97 ctermbg=NONE cterm=bold guifg=#7a3e9d guibg=NONE gui=bold
hi rubyStringDelimiter ctermfg=64 ctermbg=NONE cterm=NONE guifg=#448c27 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi rubyInclude ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi rubyRegexp ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi rubyEscape ctermfg=243 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi rubyControl ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi rubyOperator ctermfg=243 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi rubyException ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=97 ctermbg=NONE cterm=bold guifg=#7a3e9d guibg=NONE gui=bold
hi rubyRailsARAssociationMethod ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi rubyRailsARMethod ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi rubyRailsRenderMethod ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi rubyRailsMethod ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi erubyDelimiter ctermfg=243 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi erubyComment ctermfg=248 ctermbg=NONE cterm=NONE guifg=#aaaaaa guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi htmlTag ctermfg=110 ctermbg=NONE cterm=NONE guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=110 ctermbg=NONE cterm=NONE guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlTagName ctermfg=110 ctermbg=NONE cterm=NONE guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlArg ctermfg=110 ctermbg=NONE cterm=NONE guifg=#91b3e0 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=68 ctermbg=NONE cterm=NONE guifg=#4b83cd guibg=NONE gui=NONE
hi yamlAnchor ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi yamlAlias ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=64 ctermbg=NONE cterm=NONE guifg=#448c27 guibg=NONE gui=NONE
hi cssURL ctermfg=97 ctermbg=NONE cterm=NONE guifg=#7a3e9d guibg=NONE gui=NONE
hi cssFunctionName ctermfg=131 ctermbg=NONE cterm=bold guifg=#aa3731 guibg=NONE gui=bold
hi cssColor ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssClassName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssValueLength ctermfg=130 ctermbg=NONE cterm=NONE guifg=#ab6526 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=64 ctermbg=NONE cterm=NONE guifg=#448c27 guibg=NONE gui=NONE
hi cssBraces ctermfg=243 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE