open Html
open Wrapper
open Html.App
open Html.Events
open Html.Attributes
open Svg.Attributes
open Svg

  
type msg = Increment | Decrement
  
type model = int 
  
let model = 2
  
let update msg model = 
  match msg with 
  | Increment -> model + 1
  | Decrement -> model - 1

let view model =   
  div [ className "body" ]
    [ button [ onClick Decrement ] [ text "-" ]
    ; div [] [ text (string_of_int model) ]
    ; button [ onClick Increment ] [ text "+" ]
    ]
 
let main = beginnerProgram { model = model; update = update; view = view}
  	   

let () =
   kickoff main
