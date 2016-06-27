type 'flags program
	    
type ('err, 'ok) task
		 
type processId
       
type ('appMsg, 'selfMsg) router
			 
val sendToApp : ('msg, 'a) router -> 'msg -> ('x, 'b) task

val sendToSelf : ('a, 'msg) router -> 'msg -> ('x, 'b) task

val hack : 'msg -> 'a
