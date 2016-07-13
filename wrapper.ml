open Platform
open Js
open Utils
open VirtualDom
       
let elm = Unsafe.obj [||]
	 
let kickoff main =
  let wrappedmain = Unsafe.obj [|("main", Unsafe.inject main)|]
  in
  let argList = toList3 elm (string "Main") wrappedmain
  in
  ignore (call "_elm_lang$core$Native_Platform.addPublicModule" argList);
  ignore (Unsafe.meth_call elm  "fullscreen" [||])
