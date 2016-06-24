
    
    (* nodes *)
    type 'msg node

    type 'msg property

    val node : string -> 'msg property list -> 'msg node list -> 'msg node

    val text : string -> 'msg node

    (* properties and attributes*)

    val property : string -> Decode.value -> 'msg property

    val attribute : string -> string -> 'msg property

    val attributeNS : string -> string -> string -> 'msg property

    val style : (string * string) list -> 'msg property
					       
    (* events *)

    type options = {
	stopPropagation : bool;
	preventDefault  : bool;
      }
		     
    val on : string -> 'msg Decode.decoder -> 'msg property

    val onWithOptions : string -> options -> 'msg Decode.decoder -> 'msg property

    (* optimizations *)

    val lazy1 : ('a -> 'msg node) -> 'a -> 'msg node

    val lazy2 : ('a -> 'b -> 'msg node) -> 'a -> 'b -> 'msg node

    val lazy3 : ('a -> 'b -> 'c -> 'msg node) -> 'a -> 'b -> 'c -> 'msg node

    (* programs *)

    type ('flags, 'model, 'msg) pgm = {
	init : 'flags -> ('model * 'msg Decode.cmd);
	update : 'msg -> 'model -> ('model * 'msg Decode.cmd);
	subscriptions : 'model -> 'msg Decode.sub;
	view : 'model -> 'msg node;
      }

    val programWithFlags : ('flags, 'model, 'msg) pgm -> 'flags Decode.program

