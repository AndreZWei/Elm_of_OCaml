open Html
open Wrapper
open Html.Attributes
open Html.Events
open Svg

type msg = Increment | Decrement
 
type model = int 

let model = 0

let update msg model = 
	match msg with 
	| Increment -> model + 1
	| Decrement -> model - 1

let main : (msg html)
  = button [onClick Increment] [ text "hello"]
	   
let () =
  kickoff main
