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

syn match formlOperator       "\(\<[A-Z][a-zA-Z0-9_']*\.\)\=[-!#λ$%&\*\+/<=>\?@\\^|~:.][-!#λ$%&\*\+/<=>\?@\\^|~:.]*"
syn match formlDelimiter      "(\|)\|\[\|\]\|{\|}"
syn match formlNumber         "\<-\?[0-9]\+\>"
syn match formlType           "\(\<[A-Z][a-zA-Z0-9_']*\)\=\<[A-Z][a-zA-Z0-9_']*\>"
syn match javascriptOpenClose '`' display
syn match formlIdentifier     "\<[_[:lower:]][_[:alnum:]]*[?!=]\=" contains=NONE display transparent
syn match formlBool           "\<\(true\|false\)\>" 
syn match formlSpecial        "\<\(inline\)\>"
syn match formlStatement      "\<\(do!\|do\|private\|return\|if\|then\|else\|yield\)\>" 
syn match formlSigArrow       "->"
syn match formlComment        "--.*$" contains=formlTodo

syn keyword formlNestedKeywords let open as module nextgroup=formlBinding skipwhite
syn keyword formlTodo contained TODO FIXME XXX NOTE

syn region  formlInterpolation matchgroup=javascriptOpenClose start="`" end="`" contained contains=ALL
syn cluster formlStringSpecial contains=formlInterpolation

syn region  formlString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@formlStringSpecial
syn cluster formlCluster contains=@formlBinding

let b:current_syntax = "forml"

hi def link formlNumber         Number
hi def link formlTodo           Todo
hi def link formlTopKeywords    Structure
hi def link formlNestedKeywords Keyword
hi def link formlComment        Comment
hi def link formlOperator       Operator
hi def link formlSpecial        Special
hi def link formlBool           Boolean
hi def link formlString         String
hi def link formlStatement      Label
hi def link formlType           Typedef
hi def link javascriptOpenClose SpecialChar
hi def link formlSigArrow       Delimiter
hi def link formlDelimiter      Delimiter

setlocal expandtab
setlocal autoindent
