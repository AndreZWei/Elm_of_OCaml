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
  createSvg [ x "0"; y "0"; viewBox "0 0 1000 1000" ]
    [ rect
        [ fill "#7FD13B"; x "0"; y "0"; width "300.0"; height "600.0"
        ] []
    ]
 
let main = beginnerProgram { model = model; update = update; view = view}
  	   

let () =
   kickoff main
