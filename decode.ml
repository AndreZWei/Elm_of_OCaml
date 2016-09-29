open Utils

type 'a decoder = Decoder

type value = Encode.value

let decodePrimitive tag =
  callFun "_elm_lang$core$Native_Json.decodePrimitive"
	  (Js.string tag)

let decodeString decoder s = 
  callFun2 "_elm_lang$core$Native_Json.runOnString"
	  decoder (Js.string s)	 

let decodeValue decoder v = 
  callFun2 "_elm_lang$core$Native_Json.run"
	  decoder v

let map tagger decoder = 
  callFun2 "_elm_lang$core$Native_Json.decodeObject1"
	  tagger decoder

let jsonstring = 
  decodePrimitive "string"

let jsonint = 
  decodePrimitive "int"

let jsonfloat = 
  decodePrimitive "float"

let jsonbool =
  decodePrimitive "bool"

let jsonlist decoder = 
  callFun "_elm_lang$core$Native_Json.decodeContainer"
	  decoder

let jsonarray decoder = 
  callFun "_elm_lang$core$Native_Json.decodeContainer"
	  decoder

let jsontuple1 f decoder =
  callFun2 "_elm_lang$core$Native_Json.decodeTuple1"
	  f decoder

let jsontuple2 f decoder1 decoder2 =
  callFun3 "_elm_lang$core$Native_Json.decodeTuple2"
	  f decoder1 decoder2

let jsontuple3 f decoder1 decoder2 decoder3 =
  callFun4 "_elm_lang$core$Native_Json.decodeTuple3"
	  f decoder1 decoder2 decoder3

(* let jsontuple4 f decoder1 decoder2 decoder3 decoder4 =
	let argList = toList5 f decoder1 decoder2 decoder3 decoder4
	in
	callFun "_elm_lang$core$Native_Json.decodeTuple4" argList
 *)
let decodeField s decoder = 
  callFun2 "_elm_lang$core$Native_Json.decodeField"
	   (Js.string s) decoder

let at fields decoder = 
  List.fold_right decodeField fields decoder

let andThen decoder f =
  callFun2 "_elm_lang$core$Native_Json.andThen"
	   decoder f

let fail s = 
  callFun "_elm_lang$core$Native_Json.fail"
	  s

let succeed obj = 
  callFun "_elm_lang$core$Native_Json.succeed"
	  obj
