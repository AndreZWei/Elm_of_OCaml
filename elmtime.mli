open Platform.Sub
open Task
       
type time = float

val now : (time, 'a) task

val every : time -> (time -> 'msg) -> 'msg sub

(* Units *)
					   
val millisecond : time
		    
val second : time

val minute : time

val hour : time
	     
val inMilliseconds : time -> float

val inSeconds : time -> float

val inMinutes : time -> float

val inHours : time -> float

(* Subscriptions *)
			
type 'msg mysub = Every of (time * (time -> 'msg))

val subMap : ('a -> 'b) -> 'a mysub -> 'b mysub

(* Effect manager *)

type processes = 
					  
type 'msg state =
