open Html
open Wrapper
open Html.Attributes
open Html
open Html.Events
open Svg
open Html.Attributes
open Html.App
  
type msg = Increment | Decrement
  
type model = int 
  
let model = 0
  
let update msg model = 
  match msg with 
  | Increment -> model + 1
  | Decrement -> model - 1
  
let main : (msg html)
  = button [onClick Increment] [ text "hello"]
let view model =   
 div []
    [ button [ onClick Decrement ] [ text "-" ]
    ; div [] [ text (string_of_int model) ]
    ; button [ onClick Increment ] [ text "+" ]
    ]
 
let main = beginnerProgram { model = 0; update = update; view = view}
  	   

let () =
   kickoff main
