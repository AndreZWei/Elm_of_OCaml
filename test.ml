open Html
open Wrapper
open Html
open Html.Events
open Html.Attributes
open Html.App

type model = int 



type msg = Increment | Decrement

let update msg model = 
	match msg with 
	| Increment -> model + 1
	| Decrement -> model - 1

let view model =   
	div []
    [ button [ onClick Decrement ] [ text "-" ]
    ; div [] [ text (string_of_int model) ]
    ; button [ onClick Increment ] [ text "+" ]
    ]

let main = beginnerProgram { model = 0; update = update; view = view}
	   
let () =
  kickoff main
