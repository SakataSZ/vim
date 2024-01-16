function! ToggleTerminal()
  " すでにターミナルウィンドウが開いているかチェック
  if exists("g:terminal_window_open") && g:terminal_window_open
    " ターミナルウィンドウが開いている場合、それを閉じる
    exec "hide"
    let g:terminal_window_open = 0
  else
    " ターミナルウィンドウが開いていない場合、新しいターミナルを開く
    exec "bo term ++rows=15"
    let g:terminal_window_open = 1
  endif
endfunction
