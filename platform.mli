type 'flags program
	    
type ('err, 'ok) task
		 
type processId
       
type ('appMsg, 'selfMsg) router
			 
val sendToApp : ('msg, 'a) router -> 'msg -> ('x, 'b) task

val sendToSelf : ('a, 'msg) router -> 'msg -> ('x, 'b) task

val hack : 'msg -> 'a

module Cmd : sig

    type 'msg cmd

    val map : ('a -> 'msg) -> 'a cmd -> 'msg cmd

    val batch : 'msg cmd list -> 'msg cmd

    val none : 'msg cmd

  end

module Sub : sig

    type 'msg sub

    val map : ('a -> 'msg) -> 'a sub -> 'msg sub

    val batch : 'msg sub list -> 'msg sub

    val none : 'msg sub

  end
