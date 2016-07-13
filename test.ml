open Html
open Wrapper
open Html
open Html.Events
open Html.Attributes
open Html.App

type model = int 



type msg = int

let (main: msg html) = button [] [text "Hello World"]
	   
let () =
  kickoff main
