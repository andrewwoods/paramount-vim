"###############################################################################
"
" Paramount 
"
"###############################################################################
"
" Author: Andrew Woods
" Date Created: 2022 Nov 16 Wed
" Version: 0.0.0 
" 

hi clear

" if exists("g:paramount")
"     finish
" endif
let g:paramount = 1

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="paramount"

"===========================================================
"
" Functions 
"
"===========================================================

" 
" Create settings value for a highlight group
"
" @param String group Tne name of the entity to 
" @param Object settings Defines color and style values
" @param Object styles Defines style attributes
"
function! s:hi(group, settings, style={})
  execute "highlight" a:group
  \ "guifg=" (has_key(a:settings, "fg") ? a:settings.fg.gui : "NONE")
  \ "guibg=" (has_key(a:settings, "bg") ? a:settings.bg.gui : "NONE")
  \ "guisp=" (has_key(a:settings, "sp") ? a:settings.fg.gui : "NONE")
  \ "gui="   (has_key(a:style, "gui")  ? a:style.gui : "NONE")
  \ "ctermfg=" (has_key(a:settings, "fg") ? a:settings.fg.term : "NONE")
  \ "ctermbg=" (has_key(a:settings, "bg") ? a:settings.bg.term : "NONE")
  \ "cterm=" (has_key(a:style, "term") ? a:style.term : "NONE")
endfunction



"===========================================================
"
" Legend
"
"===========================================================

let s:paramount_navy = { "gui": "#00005f", "term": 17 }
let s:paramount_blue = { "gui": "#0000af", "term": 19 }
let s:paramount_sky  = { "gui": "#0087ff", "term": 33 }
let s:paramount_aqua = { "gui": "#5fffff", "term": 87 }
let s:paramount_green = { "gui": "#00d75f", "term": 41 }
let s:bet_red = { "gui": "#ff6060", "term": "198" }

let s:light_blue = { "gui": "#5fafff", "term": 75 }
let s:black = { "gui": "#121212", "term": 233 }
let s:white = { "gui": "#ffffff", "term": 15 }
let s:darker_gray = { "gui": "#1c1c1c", "term": 234 }
let s:dark_gray = { "gui": "#3a3a3a", "term": 237 }
let s:medium_gray = { "gui": "#767676", "term": 243 }
let s:light_gray = { "gui": "#b2b2b2", "term": 249 }
let s:soft_white = { "gui": "#d0d0d0", "term": 252 }
let s:purple = { "gui": "#5f0087", "term": 54 }
let s:light_purple = { "gui": "#af87ff", "term": 141 }
let s:light_goldenrod = { "gui": "#ffd787", "term": 222 }
let s:yellow = { "gui": "#ffff5f", "term": 227 }
let s:orange = { "gui": "#ffaf00", "term": 214 }

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Styles
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

let s:bold = "bold"
let s:curly_underline = "undercurl"
let s:dashed_underline = "underdashed"
let s:dotted_underline = "underdotted"
let s:double_underline = "underdouble"
let s:italic = "italic"
let s:no_combine = "nocombine"
let s:none = "NONE"
let s:reverse = "reverse"
let s:standout = "standout"
let s:strikethrough = "strikethrough"
let s:strikethru = s:strikethrough
let s:underline = "underline"



"===========================================================
"
" Settings 
"
"===========================================================

call s:hi("Normal", { "fg": s:white, "bg": s:black })

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" User Interface 
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

call s:hi("LineNr", { "fg": s:white, "bg": s:paramount_navy })
call s:hi("LineNrAbove", { "fg": s:paramount_sky, "bg": s:paramount_navy })
call s:hi("LineNrBelow", { "fg": s:white, "bg": s:paramount_navy })
call s:hi("CursorLineNr", { "fg": s:white, "bg": s:paramount_navy} )



"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Programming Syntax 
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

call s:hi("Comment", { "fg": s:medium_gray} )


