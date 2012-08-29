" I need to do some imagining of how I might write vim functions. Obviously no one
" wants to learn Vimscript, so Ruby is the way to go. 

" See :help if_ruby to get a full list of commands, modules, and the like. 

"NOPE
function! Page(page)
ruby << EOF
  VIM::command(r #{page}.wiki)
EOF
endfunction


