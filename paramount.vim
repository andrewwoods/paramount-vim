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
function! s:hi(group, settings)
  execute "highlight" a:group
  \ "guifg=" (has_key(a:settings, "fg")  ? a:settings.fg.gui : "NONE")
  \ "guibg=" (has_key(a:settings, "bg")  ? a:settings.bg.gui : "NONE")
  \ "guisp=" (has_key(a:settings, "sp")  ? a:settings.sp.gui : "NONE")
  \ "gui="   (has_key(a:settings, "gui") ? a:settings.gui    : "NONE")
endfunction



"===========================================================
"
" Legend 
"
"===========================================================

let s:paramount_navy = { "gui": "#000a3c", "term": "17" }
let s:paramount_blue = { "gui": "#023f8c", "term": "19" }
let s:paramount_aqua = { "gui": "#80e9ed", "term": "87" }
let s:paramount_sky = { "gui": "#1474ff", "term": "27" }
let s:paramount_green = { "gui": "#00D86D", "term": "41" }
let s:black = { "gui": "#1c1b1c", "term": "234" }
let s:white = { "gui": "#ffffff", "term": "" }
let s:dark_gray = { "gui": "#3a3a39", "term": "237" }
let s:medium_gray = { "gui": "#898989", "term": "243" }
let s:light_gray = { "gui": "#b2b2b2", "term": "249" }
let s:soft_white = { "gui": "#ececec", "term": "252" }

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Styles 
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

let s:bold = { "term": "bold" }
let s:underline = { "term": "underline" }
let s:undercurl = { "term": "undercurl" }
let s:underdouble = { "term": "underdouble" }
let s:underdotted = { "term": "underdotted" }
let s:underdashed = { "term": "underdashed" }
let s:strikethrough = { "term": "strikethrough" }
let s:reverse = { "term": "reverse" }
let s:italic = { "term": "italic" }
let s:standout = { "term": "standout" }
let s:no_combine = { "term": "nocombine" }
let s:none = { "term": "NONE" }

"
" Style Aliases
"
let s:strikethru = s:strikethrough
let s:curly_underline = s:undercurl
let s:double_underline = s:underdouble
let s:dotted_underline = s:underdotted
let s:dashed_underline = s:underdashed

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


