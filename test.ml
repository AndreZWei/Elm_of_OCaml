open VirtualDom
open Platform
open Wrapper

type msg = Increment | Decrement
       
let main : (msg node)
  = text "Hello World" 

let () =
  kickoff main
