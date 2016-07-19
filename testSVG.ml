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
  createSvg [ x "0"; y "0"; viewBox "0 0 323.141 322.95" ]
    [ rect
        [ fill "#7FD13B"; x "200.0"; y "400.0"; width "300.0"; height "600.0"
        ] []
    ]
 
let main = beginnerProgram { model = model; update = update; view = view}
  	   

let () =
   kickoff main
