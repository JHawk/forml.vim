" Vim syntax file
" Language: Forml
" Maintainer: Joshua Hawkins <josh.r.hawk@gmail.com>
" Version: 0.1
" Latest Revision: 1 Jan 2013

if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

syn match formlBinding  '\[a-z]\+'
syn match formlSpecial  "\<inline\>"
syn match formlOperator "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=[-!#$%&\*\+/<=>\?@\\^|~.][-!#$%&\*\+/<=>\?@\\^|~:.]*"
syn match formlBool     "\<\(true\|false\)\>" 
syn match formlNumber   '\[0-9]\+'

syn match javascriptOpenClose '`'

syn keyword formlNestedKeywords let open nextgroup=formlBinding skipwhite
syn keyword formlTopKeywords    module   nextgroup=formlBinding skipwhite


" need to fix this
" syn region javascriptBlock start="`" end="`" fold transparent contains=

syn keyword formlTodo contained TODO FIXME XXX NOTE
syn match   formlComment "--.*$" contains=formlTodo

let b:current_syntax = "forml"

hi def link formlNumber         Todo
hi def link formlTodo           Todo
hi def link formlTopKeywords    Structure
hi def link formlNestedKeywords Keyword
hi def link formlComment        Comment
hi def link formlOperator       Operator
hi def link formlSpecial        Special
hi def link formlBinding        Function
hi def link formlBool           Boolean

hi def link javascriptOpenClose SpecialChar
