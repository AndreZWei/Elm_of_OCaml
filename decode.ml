open Utils

type 'a decoder = Decoder

type value = Encode.value

let decodePrimitive tag =
  	let argList = toList tag
  	in
  	callFun "_elm_lang$core$Native_Json.decodePrimitive" argList

let decodeString decoder s = 
	let argList = toList2 decoder s
	in
	callFun "_elm_lang$Native_Json.runOnString" argList

let decodeValue decoder v = 
	let argList = toList2 decoder v
	in
	callFun "_elm_lang$Native_Json.run" argList

let map tagger decoder = 
	let argList = toList2 tagger decoder
    in
    callFun "_elm_lang$Native_Json.decodeObject1" argList

let jsonstring = 
  	decodePrimitive "string"

let jsonint = 
	decodePrimitive "int"

let jsonfloat = 
	decodePrimitive "float"

let jsonbool =
  	decodePrimitive "bool"

let jsonlist decoder = 
	let argList = toList2 "list" decoder
    in
    callFun "_elm_lang$Native_Json.decodeContainer" argList

let jsonarray decoder = 
	let argList = toList2 "array" decoder
    in
    callFun "_elm_lang$Native_Json.decodeContainer" argList

let jsontuple1 f decoder =
	let argList = toList2 f decoder
	in
	callFun "_elm_lang$Native_Json.decodeTuple1" argList

let jsontuple2 f decoder1 decoder2 =
	let argList = toList3 f decoder1 decoder2
	in
	callFun "_elm_lang$Native_Json.decodeTuple2" argList

let jsontuple3 f decoder1 decoder2 decoder3 =
	let argList = toList4 f decoder1 decoder2 decoder3
	in
	callFun "_elm_lang$Native_Json.decodeTuple3" argList

let jsontuple4 f decoder1 decoder2 decoder3 decoder4 =
	let argList = toList5 f decoder1 decoder2 decoder3 decoder4
	in
	callFun "_elm_lang$Native_Json.decodeTuple4" argList

let decodeField s decoder = 
	let argList = toList2 s decoder 
    in
    callFun "_elm_lang$Native_Json.decodeField" argList

let at fields decoder = 
	List.fold_left decodeField decoder fields 

let andThen decoder f =
	let argList = toList2 decoder f
    in
    callFun "_elm_lang$Native_Json.andThen" argList

let fail s = 
	let arg = toList s
	in
	callFun "_elm_lang$Native_Json.fail" arg

let succeed obj = 
	let arg = toList obj
    in
    callFun "_elm_lang$Native_Json.succeed" arg

