scriptencoding utf-8

if exists('g:loaded_fortune')
	finish
endif
let g:loaded_fortune = 1

let s:save_cpo = &cpo
set cpo&vim

" 関数コール
nmap ftn :call mr_fortune#teller()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

