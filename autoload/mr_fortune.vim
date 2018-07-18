scriptencoding utf-8

if !exists('g:loaded_fortune')
	finish
endif
let g:laaded_fortune = 1

let s:save_cpo = &cpo
set cpo&vim

"関数の定義
function! mr_fortune#teller()
	let num =  localtime()
	if num % 7 == 0
		echo "EXCELLENT LUCK today!! :-D"
	elseif num % 4 == 0
 		echo "you're LUCKY today! :-)"
	elseif num % 2 == 0
		echo "A LITTLE LUCK today"
	elseif num % 13 == 0
		echo "Oh...NO FUTURE today..."
	else
		echo "BAD LUCK today..."
	endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
