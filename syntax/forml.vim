" Vim syntax file
" Language: Forml
" Maintainer: Joshua Hawkins <josh.r.hawk@gmail.com>
" Version: 0.1
" Latest Revision: 1 Jan 2013
" URL: https://github.com/JHawk/forml.vim

if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

syn match formlBinding        '\[a-z]\+'
syn match formlSpecial        "\<inline\>"
syn match formlOperator       "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=[-!#λ$%&\*\+/<=>\?@\\^|~:.][-!#λ$%&\*\+/<=>\?@\\^|~:.]*"
syn match formlBool           "\<\(true\|false\)\>" 
syn match formlStatement      "\<\(do!\)\>" 
syn match formlDelimiter      "(\|)\|\[\|\]\|{\|}"
syn match formlType           "\(\<[A-Z][a-zA-Z0-9']*\)\=\<[A-Z][a-zA-Z0-9']*\>"
syn match formlNumber         "\<-\?[0-9]\+\>"
syn match javascriptOpenClose '`'

syn keyword formlNestedKeywords let open as nextgroup=formlBinding skipwhite
syn keyword formlTopKeywords    module      nextgroup=formlBinding skipwhite

syn region formlString start=+"+ skip=+\\\\\|\\"+ end=+"+

syn match formlPair contained '\[a-z]\+'
syn cluster formlCluster contains=@formlBinding

syn keyword formlTodo contained TODO FIXME XXX NOTE
syn match   formlComment "--.*$" contains=formlTodo

let b:current_syntax = "forml"

hi def link formlNumber         Number
hi def link formlTodo           Todo
hi def link formlTopKeywords    Structure
hi def link formlNestedKeywords Keyword
hi def link formlComment        Comment
hi def link formlOperator       Operator
hi def link formlSpecial        Special
"hi def link formlBinding        Todo
hi def link formlBool           Boolean
hi def link formlString         String
hi def link formlStatement      Label
hi def link formlDelimiter      Delimiter
hi def link formlType           Typedef

hi def link javascriptOpenClose SpecialChar
