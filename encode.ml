open Utils

type value = Value (*| String of Js.js_string Js.t*)
       
let encode indent value =
  callFun2 "_elm_lang$core$Native_Json.encode"
	   indent value

let identity value =
  callFun "_elm_lang$core$Native_Json.identity"
	  value

let jsstring string = Js.Unsafe.js_expr ("\'"^string^"\'")
		 
let jsbool = identity

let jsint = identity

let jsfloat = identity

let jslist l = 
  callFun "_elm_lang$core$Native_Json.encodeList"
	  l

let jsarray a = 
  callFun "_elm_lang$core$Native_Json.encodeArray"
	  a

(*let jsobject pair = 
	let arg = toList pair 
	in 
	callFun "_elm_lang$core$Native_Json.encodeObject" arg*)
		  

