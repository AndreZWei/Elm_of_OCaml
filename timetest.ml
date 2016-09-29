open Html
open Html.App
open Svg
open Svg.Attributes
open Elmtime
open Wrapper
open Platform

type model = time
	       
type msg = Tick of time

let tick time =
  Tick time

let init : (model * msg Cmd.cmd) =
  (0.0, Cmd.none)
    
let update msg model =
  match msg with
    Tick newTime -> (newTime, Cmd.none)

(*let subscriptions model =
  every second tick
 *)
		      
let view model =
  let angle = 2.0 *. 3.14 *. (inMinutes model) in
  let handX = string_of_float (50.0 +. 40.0 *. cos angle +. 0.1) in
  let handY = string_of_float (50.0 +. 40.0 *. sin angle +. 0.1)
  in
  createSvg [ viewBox "0 0 100 100"; width "300px" ]
      [ circle [ cx "50"; cy "50"; r "45"; fill "#0B79CE" ] []
      ; line [ x1 "50"; y1 "50"; x2 handX; y2 handY; stroke "#023963" ] []
      ]
      	      
let main =
  program
    { init = init;
      update = update;
      view = view;
      subscriptions = (fun _ -> Sub.none)
    }

let _ =
  kickoff main
