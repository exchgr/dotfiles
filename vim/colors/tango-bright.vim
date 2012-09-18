" Vim color file
" Converted from Textmate theme Tango Bright using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Tango Bright"

hi Cursor ctermfg=15 ctermbg=237 cterm=NONE guifg=#ffffff guibg=#3a3a3a gui=NONE
hi Visual ctermfg=NONE ctermbg=152 cterm=NONE guifg=NONE guibg=#bbc5d3 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#efefef gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#efefef gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#efefef gui=NONE
hi LineNr ctermfg=249 ctermbg=231 cterm=NONE guifg=#afafaf guibg=#efefef gui=NONE
hi VertSplit ctermfg=252 ctermbg=252 cterm=NONE guifg=#d1d1d1 guibg=#d1d1d1 gui=NONE
hi MatchParen ctermfg=237 ctermbg=NONE cterm=underline guifg=#373737 guibg=NONE gui=underline
hi StatusLine ctermfg=241 ctermbg=252 cterm=bold guifg=#5f5f5f guibg=#d1d1d1 gui=bold
hi StatusLineNC ctermfg=241 ctermbg=252 cterm=NONE guifg=#5f5f5f guibg=#d1d1d1 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=152 cterm=NONE guifg=NONE guibg=#bbc5d3 gui=NONE
hi IncSearch ctermfg=15 ctermbg=106 cterm=NONE guifg=#ffffff guibg=#88c300 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=160 ctermbg=NONE cterm=NONE guifg=#d61819 guibg=NONE gui=NONE
hi Folded ctermfg=102 ctermbg=15 cterm=NONE guifg=#7c7e7a guibg=#ffffff gui=NONE

hi Normal ctermfg=241 ctermbg=15 cterm=NONE guifg=#5f5f5f guibg=#ffffff gui=NONE
hi Boolean ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e08e2f guibg=NONE gui=NONE
hi Character ctermfg=160 ctermbg=NONE cterm=NONE guifg=#d61819 guibg=NONE gui=NONE
hi Comment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#7c7e7a guibg=NONE gui=NONE
hi Conditional ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=237 ctermbg=NONE cterm=NONE guifg=#373737 guibg=NONE gui=NONE
hi DiffAdd ctermfg=241 ctermbg=149 cterm=bold guifg=#5f5f5f guibg=#a1e85d gui=bold
hi DiffDelete ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f25454 guibg=NONE gui=NONE
hi DiffChange ctermfg=241 ctermbg=152 cterm=NONE guifg=#5f5f5f guibg=#b9cfe7 gui=NONE
hi DiffText ctermfg=241 ctermbg=74 cterm=bold guifg=#5f5f5f guibg=#729fcf gui=bold
hi ErrorMsg ctermfg=160 ctermbg=NONE cterm=NONE guifg=#eb291c guibg=NONE gui=NONE
hi WarningMsg ctermfg=160 ctermbg=NONE cterm=NONE guifg=#eb291c guibg=NONE gui=NONE
hi Float ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e08e2f guibg=NONE gui=NONE
hi Function ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3975b6 guibg=NONE gui=NONE
hi Identifier ctermfg=97 ctermbg=NONE cterm=NONE guifg=#9062a5 guibg=NONE gui=NONE
hi Keyword ctermfg=237 ctermbg=NONE cterm=NONE guifg=#373737 guibg=NONE gui=NONE
hi Label ctermfg=106 ctermbg=NONE cterm=NONE guifg=#88c300 guibg=NONE gui=NONE
hi NonText ctermfg=188 ctermbg=231 cterm=NONE guifg=#d5d7ce guibg=#f7f7f7 gui=NONE
hi Number ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e08e2f guibg=NONE gui=NONE
hi Operator ctermfg=237 ctermbg=NONE cterm=NONE guifg=#373737 guibg=NONE gui=NONE
hi PreProc ctermfg=31 ctermbg=NONE cterm=NONE guifg=#257bb4 guibg=NONE gui=NONE
hi Special ctermfg=241 ctermbg=NONE cterm=NONE guifg=#5f5f5f guibg=NONE gui=NONE
hi SpecialKey ctermfg=188 ctermbg=231 cterm=NONE guifg=#d5d7ce guibg=#efefef gui=NONE
hi Statement ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi StorageClass ctermfg=97 ctermbg=NONE cterm=NONE guifg=#9062a5 guibg=NONE gui=NONE
hi String ctermfg=106 ctermbg=NONE cterm=NONE guifg=#88c300 guibg=NONE gui=NONE
hi Tag ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi Title ctermfg=241 ctermbg=NONE cterm=bold guifg=#5f5f5f guibg=NONE gui=bold
hi Todo ctermfg=102 ctermbg=NONE cterm=inverse,bold guifg=#7c7e7a guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi rubyFunction ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3975b6 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=160 ctermbg=NONE cterm=NONE guifg=#d61819 guibg=NONE gui=NONE
hi rubyConstant ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c6241b guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=106 ctermbg=NONE cterm=NONE guifg=#88c300 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=61 ctermbg=NONE cterm=NONE guifg=#466fb9 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=31 ctermbg=NONE cterm=NONE guifg=#257bb4 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=61 ctermbg=NONE cterm=NONE guifg=#466fb9 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=106 ctermbg=NONE cterm=NONE guifg=#88c300 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=106 ctermbg=NONE cterm=NONE guifg=#88c300 guibg=NONE gui=NONE
hi rubyEscape ctermfg=160 ctermbg=NONE cterm=NONE guifg=#d61819 guibg=NONE gui=NONE
hi rubyControl ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=237 ctermbg=NONE cterm=NONE guifg=#373737 guibg=NONE gui=NONE
hi rubyException ctermfg=31 ctermbg=NONE cterm=NONE guifg=#257bb4 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c6241b guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e18e2f guibg=NONE gui=NONE
hi erubyComment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#7c7e7a guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi htmlTag ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi htmlTagName ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi htmlArg ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=160 ctermbg=NONE cterm=NONE guifg=#d61819 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=97 ctermbg=NONE cterm=NONE guifg=#9062a5 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=61 ctermbg=NONE cterm=NONE guifg=#466fb9 guibg=NONE gui=NONE
hi yamlAlias ctermfg=61 ctermbg=NONE cterm=NONE guifg=#466fb9 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=106 ctermbg=NONE cterm=NONE guifg=#88c300 guibg=NONE gui=NONE
hi cssURL ctermfg=61 ctermbg=NONE cterm=NONE guifg=#466fb9 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8c5ea7 guibg=NONE gui=NONE
hi cssColor ctermfg=160 ctermbg=NONE cterm=NONE guifg=#d61819 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=97 ctermbg=NONE cterm=NONE guifg=#9062a5 guibg=NONE gui=NONE
hi cssClassName ctermfg=97 ctermbg=NONE cterm=NONE guifg=#9062a5 guibg=NONE gui=NONE
hi cssValueLength ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e08e2f guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c6241b guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE