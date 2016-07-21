open Html
open Wrapper
open Html.App
open Html.Events
open Html.Attributes
open Svg.Attributes
open Svg
  
type msg = Increment | Decrement | Step of (bool Js.t)
  
type model = int * bool 
  
let model = (2, false)
  
let update msg model = 
  match msg with 
  | Increment -> if (snd model) then (fst model + 2, snd model) else (fst model + 1, snd model) 
  | Decrement -> if (snd model) then (fst model - 2, snd model) else (fst model - 1, snd model) 
  | Step boo -> (fst model, Js.to_bool boo)

let step boo = Step (Js.bool boo)

let view model =   
  div [ className "body" ]
    [ button [ onClick Decrement ] [ text "-" ]
    ; div [] [ text (string_of_int (fst model)) ]
    ; button [ onClick Increment ] [ text "+" ]
    ; input [ inputType "checkbox"; onCheck step ] [ text "Step 2" ]
    ]
 
let main = beginnerProgram { model = model; update = update; view = view }
  	   

let () =
   kickoff main
