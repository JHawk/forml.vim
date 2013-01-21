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

syn keyword formlNestedKeywords let open nextgroup=formlBinding skipwhite
syn keyword formlTopKeywords    module   nextgroup=formlBinding skipwhite

" need to fix this
syn region formlBlock start="{" end="}" fold transparent contains=formlNestedKeywords



let b:current_syntax = "forml"
