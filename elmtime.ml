open Utils

type time = float
	      
type 'msg mysub = Every of (time * (time -> 'msg))
			     
let now =
  Js.Unsafe.js_expr "_elm_lang$core$Native_Time.now"

let subscription value =
  callFun2 "_elm_lang$core$Native_Platform.leaf" (Js.string "Time") value
       
let every interval tagger =
  subscription (Every (interval, tagger))

(* Units *)
	       
let millisecond = 1.0

let second = 1000.0 *. millisecond

let minute = 60.0 *. second

let hour = 60.0 *. minute

let inMilliseconds t =
  t /. millisecond

let inSeconds t =
  t /. second

let inMinutes t =
  t /. minute

let inHours t =
  t /. hour

(* Subs *)

let subMap f (Every (interval, tagger)) =
  Every (interval, f tagger)

(* Effect manager *)

let init = 0

let onEffects = 0
		  
let onSelfMsg = 0
				
	 
let _  =
  let managers =
    Js.Unsafe.js_expr "_elm_lang$core$Native_Platform.effectManagers" in
  let manager =
    Js.Unsafe.obj [|
	("pkg", Js.Unsafe.inject (Js.string "elm-lang/core"));
	("init", Js.Unsafe.inject init);
	("onEffects", Js.Unsafe.inject onEffects);
	("onSelfMsg", Js.Unsafe.inject onSelfMsg);
	("tag", Js.Unsafe.inject (Js.string "sub"));
	("subMap", Js.Unsafe.inject subMap)
       |]
  in
  Js.Unsafe.set managers (Js.Unsafe.js_expr "\'Time\'") manager
