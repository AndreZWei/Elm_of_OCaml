open Utils

type value = Value
       
let encode indent value =
  let argList = toList2 indent value
  in
  callFun "_elm_lang$core$Native_Json.encode" argList

let identity value =
  let arg = toList value
  in
  callFun "_elm_lang$core$Native_Json.identity" arg

let jsstring = identity

let jsbool = identity

let jsint = identity

let jsfloat = identity

let jslist l = 
	let arg = toList l
    in
    callFun "_elm_lang$core$Native_Json.encodeList" arg

let jsarray a = 
	let arg = toList a
	in 
	callFun "_elm_lang$core$Native_Json.encodeArray" arg

(*let jsobject pair = 
	let arg = toList pair 
	in 
	callFun "_elm_lang$core$Native_Json.encodeObject" arg*)


