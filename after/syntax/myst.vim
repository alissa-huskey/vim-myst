" Vim syntax file
" Language:	     MySt Markdown
" Maintainer:	   Alissa Huskey
" URL:		       http://github.com/alissa-huskey/vim-myst

" include markdown syntax
runtime! syntax/markdown.vim

if exists('b:current_syntax')
  unlet b:current_syntax
endif

syntax clear mkdNonListItemBlock

" syn region mkdNonListItemBlock start="\(\%^\(\s*\([-*+]\|\d\+\.\)\s\+\)\@!\|\n\(\_^\_$\|\s\{4,}[^ ]\|\t+[^\t]\)\@!\)" end="^\(\s*\([-*+]\|\d\+\.\)\s\+\)\@=" contains=@mkdNonListItem,@Spell

syntax match mystComment /^%.*$/

highlight default link mystComment    Comment

let b:current_syntax = "myst"
