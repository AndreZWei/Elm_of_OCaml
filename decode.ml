open Utils

type 'a decoder = Decoder

type value = Encode.value

let decodePrimitive tag =
  let argList = toList tag
  in
  callFun "_elm_lang$core$Native_Json.decodePrimitive" argList
	       
let jsonstring = 
  decodePrimitive "string"

let jsonbool =
  decodePrimitive "bool"
