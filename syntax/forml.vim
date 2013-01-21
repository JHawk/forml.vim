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

" can register multiple matchers with the same name
syn match formlBinding '\[a-z0-9]\+'
syn match formlBinding '\[A-Za-z_.-]\+'
syn match formlBinding '\[a-z]\+'
syn match formlSpecial "\<inline\>"

syn keyword formlNestedKeywords let open nextgroup=formlBinding skipwhite
syn keyword formlTopKeywords    module let  nextgroup=formlBinding skipwhite

" need to fix this
syn region formlBlock start="{" end="}" fold transparent contains=formlNestedKeywords

syn keyword formlTodo contained TODO FIXME XXX NOTE
syn match formlComment "--.*$" contains=formlTodo

let b:current_syntax = "forml"

hi def link formlTodo           Todo
hi def link formlTopKeywords    Keyword
hi def link formlNestedKeywords Keyword
hi def link formlComment        Comment
hi def link formlSpecial        Special

