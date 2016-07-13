let toList a =
  [|Js.Unsafe.inject a|]
    
let toList2 a b =
  [|Js.Unsafe.inject a; Js.Unsafe.inject b|]
    
let toList3 a b c =
  [|Js.Unsafe.inject a; Js.Unsafe.inject b; Js.Unsafe.inject c|]
    
let toList4 a b c d =
  [|Js.Unsafe.inject a; Js.Unsafe.inject b; Js.Unsafe.inject c; Js.Unsafe.inject d|]

let toList5 a b c d e =
  [|Js.Unsafe.inject a; Js.Unsafe.inject b; Js.Unsafe.inject c; Js.Unsafe.inject d; Js.Unsafe.inject e|]
    
let call funName argList =
  Js.Unsafe.fun_call (Js.Unsafe.js_expr funName) argList

let callFun funName a =
  let argList = toList a
  in
  Js.Unsafe.fun_call (Js.Unsafe.js_expr funName) argList
		     
let callFun2 funName a b =
  let argList = toList3 (Js.Unsafe.js_expr funName) a b
  in
  Js.Unsafe.fun_call (Js.Unsafe.js_expr "A2") argList
		     
let callFun3 funName a b c =
  let argList = toList4 (Js.Unsafe.js_expr funName) a b c
  in
  Js.Unsafe.fun_call (Js.Unsafe.js_expr "A3") argList

let callFun4 funName a b c d =
  let argList = toList5 (Js.Unsafe.js_expr funName) a b c d
  in
  Js.Unsafe.fun_call (Js.Unsafe.js_expr "A4") argList
