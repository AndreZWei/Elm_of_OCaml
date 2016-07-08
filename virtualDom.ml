open Utils
open Decode
open Platform.Cmd
open Platform.Sub
       
type 'msg node = Node

type 'msg property = Property

let text text =
  let textList = toList text
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.text" textList
	  
let node tag property children =
  let argList = toList4 (Js.Unsafe.js_expr "_elm_lang$virtual_dom$Native_VirtualDom.node") tag property children
  in
  callFun "A3" argList

let map f node =
  let argList = toList2 f node
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.map" argList
	  
(* properties and attributes *)
let property key value =
  let argList = toList2 key value
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.property" argList
	  
let attribute key value =
  let argList = toList2 key value
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.attribute" argList
	  
let attributeNS namespace key value =
  let argList = toList3 namespace key value
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.attributeNS" argList

let style styleList =
  let argList = toList styleList
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.style" argList
	  
(* events *)
type options = {
    stopPropagation : bool;
    preventDefault  : bool;
  }
		 
let defaultOptions : options =
  { stopPropagation = false;
    preventDefault  = false;
  }

let onWithOptions eventName option decoder =
  let argList = toList3 eventName option decoder
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.on" argList
	  
let on eventName decoder =
  onWithOptions eventName defaultOptions decoder

(* optimizations *)

let lazy1 (f : 'a -> 'msg node) (a : 'a) =
  let argList = toList2 f a
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.lazy" argList

let lazy2 (f : 'a -> 'b -> 'msg node) (a : 'a) (b : 'b)  =
  let argList = toList3 f a b
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.lazy2" argList

let lazy3 (f : 'a -> 'b -> 'c -> 'msg node) (a : 'a) (b : 'b) (c : 'c) =
  let argList = toList4 f a b c
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.lazy3" argList

(* programs *)
	  
type ('flags, 'model, 'msg) pgm = {
    init : 'flags -> ('model * 'msg cmd);
    update : 'msg -> 'model -> ('model * 'msg cmd);
    subscriptions : 'model -> 'msg sub;
    view : 'model -> 'msg node;
  }

let programWithFlags pgm =
  let argList = toList pgm
  in
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.programWithFlags" argList
