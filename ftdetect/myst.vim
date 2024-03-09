" echom "loading: " expand("%")

if !has('patch-7.4.480')
    " Before this patch, vim used modula2 for .md.
    autocmd! filetypedetect BufRead,BufNewFile *.md
endif

" autocmd BufRead,BufNewFile *.md echom "detecting myst..."
autocmd BufRead,BufNewFile *.md call s:DetectMyst()
autocmd BufRead,BufNewFile *.{myst.md,myst} setfiletype myst

function! s:DetectMyst()
  " look in front matter for myst format
  "
  " example front matter:
  " ---
  " jupytext:
  "   formats: md:myst
  "   text_representation:
  "     extension: .md
  "     format_name: myst
  " kernelspec:
  "   display_name: Python 3
  "   language: python
  "   name: python3
  " ---

  if getline(1) != '---'
    return
  endif

  let l:lineno = 2
  let l:eof = line('$')

  while l:lineno < l:eof
    let l:text = getline(l:lineno)

    " end of front matter
    if l:text == '---'
      return
    endif

    " myst format
    if l:text =~ 'formats:\s*md:myst'
      setlocal filetype=myst
      runtime! ftplugin/markdown.vim ftplugin/markdown_*.vim ftplugin/markdown/*.vim
      return
    endif

    let l:lineno += 1
  endwhile
endfunction


