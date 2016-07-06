open Html
open Wrapper

type msg = Increment | Decrement
       
let main : (msg html)
  = div [] [text "AAAA"]
	   
let () =
  kickoff main
