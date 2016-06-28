open VirtualDom
open Wrapper

type msg = Increment | Decrement
       
let main : (msg pgm)
  = programWithFlags 

let () =
  kickoff main
