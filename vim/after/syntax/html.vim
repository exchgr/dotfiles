" Vim syntax file
" Language:     HTML (version 5)
" Maintainer:   Rodrigo Machado <rcmachado@gmail.com>
" URL:          http://gist.github.com/256840
" Last Change:  2010 Aug 26
" License:      Public domain
"               (but let me know if you liked it :) )
"
" Note: This file just adds the new tags from HTML 5
"       and don't replace default html.vim syntax file

" HTML 5 tags
syn keyword htmlTagName contained article aside audio bb canvas command datagrid
syn keyword htmlTagName contained datalist details dialog embed figure footer
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp section time video
syn keyword htmlTagName contained source figcaption

" HTML 5 arguments
syn keyword htmlArg contained autofocus autocomplete placeholder min max step
syn keyword htmlArg contained contenteditable contextmenu draggable hidden item
syn keyword htmlArg contained itemprop list sandbox subject spellcheck
syn keyword htmlArg contained novalidate seamless pattern formtarget manifest
syn keyword htmlArg contained formaction formenctype formmethod formnovalidate
syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
syn keyword htmlArg contained hidden role
syn match   htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
syn match   htmlArg contained "\s*data-[-a-zA-Z0-9_]\+"

syn include @htmlCss syntax/css/html5-elements.vim
syn include @htmlCss syntax/css/css3-animations.vim
syn include @htmlCss syntax/css/css3-background.vim
syn include @htmlCss syntax/css/css3-box.vim
syn include @htmlCss syntax/css/css3-break.vim
syn include @htmlCss syntax/css/css3-colors.vim
syn include @htmlCss syntax/css/css3-content.vim
syn include @htmlCss syntax/css/css3-flexbox.vim
syn include @htmlCss syntax/css/css3-gcpm.vim
syn include @htmlCss syntax/css/css3-grid.vim
syn include @htmlCss syntax/css/css3-grid-layout.vim
syn include @htmlCss syntax/css/css3-hyperlinks.vim
syn include @htmlCss syntax/css/css3-images.vim
syn include @htmlCss syntax/css/css3-layout.vim
syn include @htmlCss syntax/css/css3-linebox.vim
syn include @htmlCss syntax/css/css3-lists.vim
syn include @htmlCss syntax/css/css3-marquee.vim
" syn include @htmlCss syntax/css/css3-mediaqueries.vim
syn include @htmlCss syntax/css/css3-multicol.vim
syn include @htmlCss syntax/css/css3-preslev.vim
syn include @htmlCss syntax/css/css3-ruby.vim
syn include @htmlCss syntax/css/css3-selectors.vim
syn include @htmlCss syntax/css/css3-text.vim
syn include @htmlCss syntax/css/css3-transforms.vim
syn include @htmlCss syntax/css/css3-transitions.vim
syn include @htmlCss syntax/css/css3-ui.vim
syn include @htmlCss syntax/css/css3-values.vim
syn include @htmlCss syntax/css/css3-writing-modes.vim
