open Decode
open Platform
       
(* nodes *)

type 'msg node
	  
type 'msg property
	  
val node : string -> 'msg property list -> 'msg node list -> 'msg node
								  
val text : string -> 'msg node

val map : ('a -> 'msg) -> 'a node -> 'msg node
			  
(* properties and attributes *)

val property : string -> value -> 'msg property

val attribute : string -> string -> 'msg property

val attributeNS : string -> string -> string -> 'msg property

val style : (string * string) list -> 'msg property
					       
(* events *)

type options = {
    stopPropagation : bool;
    preventDefault  : bool;
  }
		 
val on : string -> 'msg decoder -> 'msg property
					       
val onWithOptions : string -> options -> 'msg decoder -> 'msg property
								     
(* optimizations *)
								     
val lazy1 : ('a -> 'msg node) -> 'a -> 'msg node
					    
val lazy2 : ('a -> 'b -> 'msg node) -> 'a -> 'b -> 'msg node
							
val lazy3 : ('a -> 'b -> 'c -> 'msg node) -> 'a -> 'b -> 'c -> 'msg node
								    
(* programs *)
								    
type ('flags, 'model, 'msg) pgm = {
    init : 'flags -> ('model * 'msg cmd);
    update : 'msg -> 'model -> ('model * 'msg cmd);
    subscriptions : 'model -> 'msg sub;
    view : 'model -> 'msg node;
  }
	     
val programWithFlags : ('flags, 'model, 'msg) pgm -> 'flags program
