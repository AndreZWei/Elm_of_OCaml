open Html
open Wrapper
open Html.Attributes
open Html
open Html.Events
open Svg
open Html.App
  
type msg = Increment | Decrement | ChangeModel of string
  
type model = int 
  
let model = 2
  
let update msg model = 
  match msg with 
  | Increment -> model + 1
  | Decrement -> model - 1
  | ChangeModel number -> int_of_string number
  
let changemodel number = ChangeModel number
  
let view model =   
 div []
    [ button [ onClick Decrement ] [ text "-" ]
    ; div [] [ text (string_of_int model) ]
    ; button [ onClick Increment ] [ text "+" ]
    ; textarea [ onInput changemodel ] []
    ]
 
let main = beginnerProgram { model = model; update = update; view = view}
  	   

let () =
   kickoff main
