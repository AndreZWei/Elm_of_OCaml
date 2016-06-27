(* The implementation of the Html module *)


type 'msg html = 'msg node

type 'msg attribute = 'msg property


(* Custom Nodes *)

let text = VirtualDom.text  

let node = VirtualDom.node 


(* Headers *)

let h1 = node "h1"

let h2 = node "h2"

let h3 = node "h3"

let h4 = node "h4"

let h5 = node "h5"

let h6 = node "h6"


(* Grouping Contents *)

let div = node "div"

let p = node "p"

let hr = node "hr"

let pre = node "pre"

let blockquote = node "blockquote"


(* Text *)

let span = node "span"

let a = node "a"

let code = node "code"

let em = node "em"

let strong = node "strong"

let i = node "i"

let b = node "b"

let u = node "u"

let sub = node "sub"

let sup = node "sup"

let br = node "br"

(* Lists *)

let ol = node "ol"

let ul = node "ul"

let li = node "li"

let dl = node "dl"

let dt = node "dt"

let dd = node "dd"

(* Embdded Content *)

let img = node "img"

let iframe = node "iframe"

let canvas = node "canvas"

let svg = node "svg"

let math = node "math"

(* Inputs *)

let form = node "form"

let input = node "input"

let textarea = node "textarea"

let button = node "button"

let select = node "select"

let option = node "option"

(* Sections *)

let section = node "section"

let nav = node "nav"

let article = node "article"

let aside = node "aside"

let header = node "header"

let footer = node "footer"

let address = node "address"

let main' = node "main"

let body = node "body"


(* Html App *)

module App = struct

	type never = Never of never

	type ('model, 'msg) beginnerpgm = {
		model: 'model
	;   view: 'model -> 'msg html
	;   update: 'msg -> 'model -> 'model
	}

	type ('model, 'msg) pgm = {
		init: ('model * 'msg Decode.cmd)
	;	update: 'msg -> 'model -> ('model * 'msg Decode.cmd)
	;   subscriptions: 'model -> 'msg Decode.sub
	;   view: 'model -> 'msg html
	}
	
	type ('flags, 'msg, 'model) pgmwithFlags = {
		init: 'flags -> ('model * 'msg Decode.cmd)
	;   update: 'msg -> 'model -> ('model * 'msg Decode.cmd)
	;   subscriptions: 'model -> 'msg Decode.sub
	;   view: 'model -> 'msg html
	}


end 

module Attributes = struct

end

module Events = struct

end

module Lazy = struct

end





