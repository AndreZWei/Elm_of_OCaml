open Decode
open VirtualDom
open Platform
open Platform.Cmd 
open Platform.Sub 


type 'msg html = 'msg VirtualDom.node
	
type 'msg attribute = 'msg VirtualDom.property

	
(* Custom Nodes *)
	
val text: string -> 'msg html 
	
val node: string -> ('msg attribute) list -> ('msg html) list -> ('msg html)

	
(* Headers *)
	
val h1: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val h2: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val h3: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val h4: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val h5: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val h6: ('msg attribute) list -> ('msg html) list -> ('msg html) 

	
(* Grouping Content *)
	
val div: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val p: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val hr: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val pre: ('msg attribute) list -> ('msg html) list -> ('msg html) 
	
val blockquote: ('msg attribute) list -> ('msg html) list -> ('msg html) 

	
(* Text *)
	
val span: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val a: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val code: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val em: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val strong: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val i: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val b: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val u: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val sub: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val sup: ('msg attribute) list -> ('msg html) list -> ('msg html)

val br: ('msg attribute) list -> ('msg html) list -> ('msg html)


(* Lists *)
	
val ol: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val ul: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val li: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val dl: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val dt: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val dd: ('msg attribute) list -> ('msg html) list -> ('msg html)

	
(* Embedded Content *)
	
val img: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val iframe: ('msg attribute) list -> ('msg html) list -> ('msg html)

val canvas: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val svg: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val math: ('msg attribute) list -> ('msg html) list -> ('msg html)


(* Inputs *)
	
val form: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val input: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val textarea: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val button: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val select: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val option: ('msg attribute) list -> ('msg html) list -> ('msg html)


(* Sections *)
	
val section: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val nav: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val article: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val aside: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val header: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val footer: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val address: ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val main': ('msg attribute) list -> ('msg html) list -> ('msg html)
	
val body: ('msg attribute) list -> ('msg html) list -> ('msg html)


(* Html App *)

module App: sig

	type never = Never of never

	type ('model, 'msg) beginnerpgm = {
		model: 'model
	;   view: 'model -> 'msg html
	;   update: 'msg -> 'model -> 'model
	}

	type ('model, 'msg) pgm = {
		init: ('model * 'msg cmd)
	;	update: 'msg -> 'model -> ('model * 'msg cmd)
	;   subscriptions: 'model -> 'msg sub
	;   view: 'model -> 'msg html
	}
	
	type ('flags, 'msg, 'model) pgmwithFlags = 
	('flags, 'msg, 'model) VirtualDom.pgm
	
	val map : ('a -> 'msg) -> 'a html -> 'msg html

	val beginnerProgram: ('model, 'msg) beginnerpgm -> never Platform.program

	val program: ('model, 'msg) pgm -> never Platform.program

	val programWithFlags: ('flags, 'msg, 'model) pgmwithFlags -> 'flags Platform.program

	end 

	
	(* Html Attributes *)

module Attributes: sig
	
	(* Special Attributes *)

	val style: (string * string) list -> 'msg attribute

	val className: string -> 'msg attribute

	val classList: (string * bool) list -> 'msg attribute

	val id: string -> 'msg attribute

	val title: string -> 'msg attribute

	val hidden: bool -> 'msg attribute

	(* Inputs *)

	val type': string -> 'msg attribute

	val value: string -> 'msg attribute

	val defaultValue: string -> 'msg attribute

	val checked: bool -> 'msg attribute

	val placeholder: string -> 'msg attribute

	val selected: bool -> 'msg attribute

	(* Input Helpers *)

	val accept: string -> 'msg attribute

	val acceptCharset: string -> 'msg attribute

	val action: string -> 'msg attribute

	val autocomplete: bool -> 'msg attribute

	val autofocus: bool -> 'msg attribute

	val autosave: string -> 'msg attribute

	val disabled: bool -> 'msg attribute

	val enctype: string -> 'msg attribute

	val formaction: string -> 'msg attribute

	val list: string -> 'msg attribute

	val maxlength: int -> 'msg attribute

	val minlength: int -> 'msg attribute

	val method': string -> 'msg attribute

	val multiple: bool -> 'msg attribute

	val name: string -> 'msg attribute

	val novalidate: bool -> 'msg attribute

	val pattern: string -> 'msg attribute

	val readonly: bool -> 'msg attribute

	val required: bool -> 'msg attribute

	val size: int -> 'msg attribute

	val for': string -> 'msg attribute

	val form: string -> 'msg attribute

	(* Input Ranges *)

	val max: string -> 'msg attribute

	val min: string -> 'msg attribute

	val step: string -> 'msg attribute

	(* Input Text Areas *)

	val cols: int -> 'msg attribute

	val rows: int -> 'msg attribute

	val wrap: string -> 'msg attribute

	(* Links and Areas *)

	val href: string -> 'msg attribute

	val target: string -> 'msg attribute

	val download: bool -> 'msg attribute

	val downloadAs: string -> 'msg attribute

	val hreflang: string -> 'msg attribute

	val media: string -> 'msg attribute

	val ping: string -> 'msg attribute

	val rel: string -> 'msg attribute

	(* Maps *)

	val ismap: bool -> 'msg attribute

	val usemap: string -> 'msg attribute

	val shape: string -> 'msg attribute

	val coords: string -> 'msg attribute

	(* Embedded Content *)

	val src: string -> 'msg attribute

	val height: int -> 'msg attribute

	val width: int -> 'msg attribute

	val alt: string -> 'msg attribute

	(* Audio and Video *)

	val autoplay: bool -> 'msg attribute

	val controls: bool -> 'msg attribute

	val loop: bool -> 'msg attribute

	val preload: string -> 'msg attribute

	val poster: string -> 'msg attribute

	val default: bool -> 'msg attribute

	val kind: string -> 'msg attribute

	val srclang: string -> 'msg attribute

	(* iframes *)

	val sandbox: string -> 'msg attribute

	val seamless: bool -> 'msg attribute

	val srcdoc: string -> 'msg attribute

	(* ordered list *)

	val reversed: bool -> 'msg attribute

	val start: int -> 'msg attribute

	(* tables *)

	val align: string -> 'msg attribute

	val colspan: int -> 'msg attribute

	val rowspan: int -> 'msg attribute

	val headers: string -> 'msg attribute

	val scope: string -> 'msg attribute

	(* Header Stuff *)

	val async: bool -> 'msg attribute

	val charset: string -> 'msg attribute

	val content: string -> 'msg attribute

	val defer: bool -> 'msg attribute

	val httpEquiv: string -> 'msg attribute

	val language: string -> 'msg attribute

	val scoped: bool -> 'msg attribute

	(* Less Common Global Attributes *)

	val accesskey: char -> 'msg attribute

	val contenteditable: bool -> 'msg attribute

	val contextmenu: string -> 'msg attribute

	val dir: string -> 'msg attribute

	val draggable: string -> 'msg attribute

	val dropzone: string -> 'msg attribute

	val itemprop: string -> 'msg attribute

	val lang: string -> 'msg attribute

	val spellcheck: bool -> 'msg attribute

	val tabindex: int -> 'msg attribute

	(* Key Generation *)

	val challenge: string -> 'msg attribute

	val keytype: string -> 'msg attribute

	(* Miscellaneous *)

	val cite: string -> 'msg attribute

	val datetime: string -> 'msg attribute

	val pubdate: string -> 'msg attribute

	val manifest: string -> 'msg attribute

	(* Custom Attributes *)

	val property: string -> Decode.value -> 'msg attribute

	val attribute: string -> string -> 'msg attribute

end


module Events: sig
	
	(* Html Events *)

	val onClick: 'msg -> 'msg attribute

	val onDoubleClick: 'msg -> 'msg attribute

	val onMouseDown: 'msg -> 'msg attribute

	val onMouseUp: 'msg -> 'msg attribute

	val onMouseEnter: 'msg -> 'msg attribute

	val onMouseLeave: 'msg -> 'msg attribute

	val onMouseOver: 'msg -> 'msg attribute

	val onMouseOut: 'msg -> 'msg attribute

	(* Form Helpers *)

	val onInput: (string -> 'msg) -> 'msg attribute

	val onCheck: (bool -> 'msg) -> 'msg attribute

	val onSubmit: 'msg -> 'msg attribute

	(* Focus Helpers *)

	val onBlur: 'msg -> 'msg attribute

	val onFocus: 'msg -> 'msg attribute

	(* Custom Event Handlers *)

	type options = VirtualDom.options

	val on: string -> 'msg Decode.decoder -> 'msg attribute

	val onWithOptions: string -> options -> 'msg Decode.decoder -> 'msg attribute

	(* Custom Decoders *)

	val targetValue: string Decode.decoder

	val targetChecked: bool Decode.decoder

	val keyCode: int Decode.decoder 

end

	(* Lazy*)

module Lazy: sig

	val lazy1: ('a -> 'msg html) -> 'a -> 'msg html

	val lazy2: ('a -> 'b -> 'msg html) -> 'a -> 'b -> 'msg html

	val lazy3: ('a -> 'b -> 'c -> 'msg html) -> 'a -> 'b -> 'c -> 'msg html
	
end
