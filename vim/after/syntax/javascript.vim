" Vim syntax file
" Language:	JavaScript
" Maintainer:	chao
" URL:		http://www.fleiner.com/vim/syntax/java.vim
" Last Change:	2012 Oct 05

"syn region  javaComment		 start="/\*"  end="\*/" 
"syn match   javaCommentStar	 contained "^\s*\*[^/]"me=e-1
"syn match   javaCommentStar	 contained "^\s*\*$"
"syn match   javaLineComment	 "//.*" 

syn clear javaScriptBraces
syn match javaScriptProvide             "^\s*dojo.provide"
syn match javaScriptRequire             "^\s*dojo.require\w*"
syn match javaScriptDelimiter           "(\|)\|*\|:\|\[\|\]\|,\|->\|<\|>\|=\|+\|-\|!"
syn keyword javaScriptObjects           Object Function Boolean Symbol Error EvalError InternalError RangeError ReferenceError SyntaxError TypeError URIError Number Math Date String RegExp Array Int8Array Uint8Array Uint8ClampedArray Int16Array Uint16Array Int32Array Uint32Array Float32Array Float64Array Map Set WeakMap WeakSet SIMD ArrayBuffer DataView JSON Promise Generator GeneratorFunction Reflect Proxy Intl Iterator ParallelArray StopIteration
syn keyword javaScriptReturn            return
syn match javaScriptDojo                "dojo.\(\.\|\w*\)\+" contains=javaScriptProvide,javaScriptRequire
syn match javaScriptDijit               "dijit.\(\.\|\w*\)\+"
syn keyword javaScriptThis              this 
syn keyword javaScriptNew               new instanceof
syn keyword javaScriptConstants         Infinity NaN undefined null 

hi def link javaScriptReturn            Return
hi def link javaScriptDelimiter         Delimiter 
hi def link javaScriptProvide           PreProc  
hi def link javaScriptRequire           PreProc
hi def link javaScriptObjects           BuiltInClass 
hi def link javaScriptDojo              BuiltInClass
hi def link javaScriptDijit             BuiltInClass
hi def link javaScriptThis              Type
hi def link javaScriptConstants         Number

" The default highlighting.
"let b:current_syntax = java"

" vim: ts=8
