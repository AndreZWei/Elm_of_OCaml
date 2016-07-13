open Utils
open Decode
open Platform.Cmd
open Platform.Sub
       
type 'msg node = Node

type 'msg property = Property

let text text =
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.text"
	  text
	  
let node tag property children =
  callFun3 "_elm_lang$virtual_dom$Native_VirtualDom.node"
	   tag property children

let map f node =
  callFun2 "_elm_lang$virtual_dom$Native_VirtualDom.map"
	  f node
	  
(* properties and attributes *)
let property key value =
  callFun2 "_elm_lang$virtual_dom$Native_VirtualDom.property"
	  key value	  
	  
let attribute key value =
  callFun2 "_elm_lang$virtual_dom$Native_VirtualDom.attribute"
	  key value
	  
let attributeNS namespace key value =
  callFun3 "_elm_lang$virtual_dom$Native_VirtualDom.attributeNS"
	  namespace key value

let style styleList =
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.style"
	  styleList
	  
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
  callFun3 "_elm_lang$virtual_dom$Native_VirtualDom.on"
	  eventName option decoder
	  
let on eventName decoder =
  onWithOptions eventName defaultOptions decoder

(* optimizations *)

let lazy1 (f : 'a -> 'msg node) (a : 'a) =
  callFun2 "_elm_lang$virtual_dom$Native_VirtualDom.lazy"
	  f a

let lazy2 (f : 'a -> 'b -> 'msg node) (a : 'a) (b : 'b)  =
  callFun3 "_elm_lang$virtual_dom$Native_VirtualDom.lazy2"
	  f a b

let lazy3 (f : 'a -> 'b -> 'c -> 'msg node) (a : 'a) (b : 'b) (c : 'c) =
  callFun4 "_elm_lang$virtual_dom$Native_VirtualDom.lazy3"
	   f a b c

(* programs *)
	  
type ('flags, 'model, 'msg) pgm = {
    init : 'flags -> ('model * 'msg cmd);
    update : 'msg -> 'model -> ('model * 'msg cmd);
    subscriptions : 'model -> 'msg sub;
    view : 'model -> 'msg node;
  }

let programWithFlags pgm =
  callFun "_elm_lang$virtual_dom$Native_VirtualDom.programWithFlags"
	  pgm
