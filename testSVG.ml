open Html
open Wrapper
open Html.App
open Svg.Attributes
open Svg
open Svg.Events

  
type msg = unit
  
type model = unit
  
let model = ()
  
let update msg model = ()

let view model =   
  createSvg [ viewBox "0 0 2000 2000" ]
    [ rect
        [ fill "#7FD13B"; width "300.0"; height "600.0"
        ] []
    ]
 
let main = beginnerProgram { model = model; update = update; view = view}
  	   

let _ =
   kickoff main
