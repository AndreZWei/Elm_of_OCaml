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

let jsonstring = identity

let jsonbool = identity
