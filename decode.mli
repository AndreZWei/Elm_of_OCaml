type 'a decoder

type value = Encode.value

val decodeString: 'a decoder -> string -> 'a

val decodeValue: 'a decoder -> value -> 'a

val map: ('a -> 'b) -> 'a decoder -> 'b decoder

val jsonstring : string decoder

val jsonint: int decoder

val jsonfloat: float decoder

val jsonbool : bool decoder

val jsonlist: 'a decoder -> ('a list) decoder

val jsonarray: 'a decoder -> ('a array) decoder

val jsontuple1: ('a -> value) -> 'a decoder -> value decoder

val jsontuple2: ('a -> 'b -> value) -> 'a decoder -> 'b decoder -> value decoder

val jsontuple3: ('a -> 'b -> 'c -> value) -> 'a decoder -> 'b decoder -> 'c decoder
-> value decoder

(* val jsontuple4: ('a -> 'b -> 'c -> 'd -> value) -> 'a decoder -> 'b decoder -> 
'c decoder -> 'd decoder -> value decoder 
 *)
val decodeField: string -> 'a decoder -> 'a decoder

val at: string list -> 'a decoder -> 'a decoder

val andThen: 'a decoder -> ('a -> 'b decoder) -> 'b decoder

val fail: string -> 'a decoder

val succeed: 'a -> 'a decoder
