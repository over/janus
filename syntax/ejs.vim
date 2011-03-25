if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'ejs'
endif

runtime! syntax/html.vim
syn include @jsTop syntax/javascript.vim

exe 'syn region ejsInjection matchgroup=PreProc start="<%=" end="%>" contains=@jsTop'
exe 'syn region ejsInjection matchgroup=PreProc start="<%" end="%>" contains=@jsTop'




