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
    
let callFun funName args =
  Js.Unsafe.fun_call (Js.Unsafe.js_expr funName) args
