(* The implementation of the Html module *)

open VirtualDom
open Decode

type 'msg html = 'msg VirtualDom.node

type 'msg attribute = 'msg VirtualDom.property



(* Cust x yom (Nodes *)

let text s = VirtualDom.text s  

let node s l1 l2 = VirtualDom.node s l1 l2 


(* Headers *)

let h1 x y = (node "h1" x y)

let h2 x y = (node "h2" x y)

let h3 x y = (node "h3" x y)

let h4 x y = (node "h4" x y)

let h5 x y = (node "h5" x y)

let h6 x y = (node "h6" x y)


(* Grouping Contents *)

let div x y = (node "div" x y)

let p x y = (node "p" x y)

let hr x y = (node "hr" x y)

let pre x y = (node "pre" x y)

let blockquote x y = (node "blockquote" x y)


(* Text *)

let span x y = (node "span" x y)

let a x y = (node "a" x y)

let code x y = (node "code" x y)

let em x y = (node "em" x y)

let strong x y = (node "strong" x y)

let i x y = (node "i" x y)

let b x y = (node "b" x y)

let u x y = (node "u" x y)

let sub x y = (node "sub" x y)

let sup x y = (node "sup" x y)

let br x y = (node "br" x y)

(* Lists *)

let ol x y = (node "ol" x y)

let ul x y = (node "ul" x y)

let li x y = (node "li" x y)

let dl x y = (node "dl" x y)

let dt x y = (node "dt" x y)

let dd x y = (node "dd" x y)

(* Embdded Content *)

let img x y = (node "img" x y)

let iframe x y = (node "iframe" x y)

let canvas x y = (node "canvas" x y)

let svg x y = (node "svg" x y)

let math x y = (node "math" x y)

(* Inputs *)

let form x y = (node "form" x y)

let input x y = (node "input" x y)

let textarea x y = (node "textarea" x y)

let button x y = (node "button" x y)

let select x y = (node "select" x y)

let option x y = (node "option" x y)

(* Sections *)

let section x y = (node "section" x y)

let nav x y = (node "nav" x y)

let article x y = (node "article" x y)

let aside x y = (node "aside" x y)

let header x y = (node "header" x y)

let footer x y = (node "footer" x y)

let address x y = (node "address" x y)

let main' x y = (node "main" x y)

let body x y = (node "body" x y)


(* Html App *)

module App = struct

	type never = Never of never

	type ('model, 'msg) beginnerpgm = {
		model: 'model
	;   view: 'model -> 'msg html
	;   update: 'msg -> 'model -> 'model
	}

	type ('flags, 'model, 'msg) pgm = {
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

	let map = VirtualDom.map

	let beginnerProgram beginnerpgm  = 
		programWithFlags 
			{ init = (fun () -> (beginnerpgm.model, Cmd.none)) 
			; update = (fun msg model -> (beginnerpgm.update msg model, Cmd.none))  
			; view = view 
			; subscriptions = (fun () -> Sub.none)
			}

	let program pgm =
		programwithFlags { pgm with init = (fun () -> pgm.init) }

	let programWithFlags = VirtualDom.programWithFlags





end 

module Attributes = struct


(* Specifies a list of styles *)
let style l = VirtualDom.style l


(* Create arbitray properties *)
let property key value = VirtualDom.property key value

let stringProperty name s = property name (jsonstring s)

let boolProperty name boo = property name (jsonbool boo)

(* Often used with CSS to style elements with common properties *)
let className name = stringProperty "className" name


(* This function makes it easier to build a space-separated class attribute.
Each class can easily be added and removed depending on the boolean value it
is paired with. *)
let classList l = 
	l
	|> List.filter snd
	|> List.map fst
	|> String.concat " "
	|> className


(* Create arbitray HTML attributes. Maps onto JavaScript 'setAttribute' function 
under the hood *)
let attribute s1 s2 = VirtualDom.attribute s1 s2



(* Global Attributes *)




(* Indicates the relevance of an element *)
let hidden boo = boolProperty "hidden" boo

(* Often used with CSS to style a specific element. The value of this 
attribute must be unique *)
let id name = stringProperty "id" name

(* Text to be displayed in a tooltip when hovering over the element *)
let title name = stringProperty "title" name



(* Less Common Global Attributes *)


(* Defines a keyboard shortcut to activate or add focus to the element. *)
let accesskey cha = stringProperty "accesskey" (Char.escaped cha)

(* Indicates whether the element's content is editable. *)
let contenteditable boo = boolProperty "contenteditable" boo

(* Defines the ID of a `menu` element which will serve as the element's
context menu. *)
let contextmenu value = attribute "contextmenu" value

(* Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl
(Right-To-Left). *)
let dir value = stringProperty "dir" value

(* Defines whether the element can be dragged *)
let draggable value = stringProperty "draggable" value

(* Indicates that the element accept the dropping of content on it *)
let dropzone value = stringProperty "dropzone" value

(* *)
let itemprop value = stringProperty "itemprop" value

(* Defines the language used in the element *)
let lang value = stringProperty "lang" value

(* Indicates whether spell checking is allowed for the element *)
let spellcheck boo = boolProperty "spellcheck" boo

(* Overrides the browser's default tab order and follows the one specified 
instead. *)
let tabindex n = stringProperty "tabindex" (string_of_int n)



(* Header Stuff *)


(* Indicates that the `script` should be executed asynchronously. *)
let async boo = boolProperty "async" boo

(* Declares the character encoding of the page or script. Common values include:

  * UTF-8 - Character encoding for Unicode
  * ISO-8859-1 - Character encoding for the Latin alphabet

For `meta` and `script`.*)
let charset value = stringProperty "charset" value

(* A value associated with http-equiv or name depending on the context. For
`meta`. *)
let content value = stringProperty "content" value

(* Indicates that a `script` should be executed after the page has been
parsed. *)
let defer boo = boolProperty "defer" boo 

(* This attribute is an indicator that is paired with the `content` attribute,
indicating what that content means. `httpEquiv` can take on three different
values: content-type, default-style, or refresh. For `meta`. *)
let httpEquiv value = stringProperty "httpEquiv" value

(* Defines the script language used in a `script`. *)
let language value = stringProperty "language" value

(* Indicates that a `style` should only apply to its parent and all of the
parents children. *)
let scoped boo = boolProperty "scoped" boo


(* Embedded Content *)

(* The URL of the embeddable content. For 'audio', 'enbed', 'iframe', 'img', 
'input', 'script', 'source', 'track', and video *)
let src value = stringProperty "src" value

(* Declare the height of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`. *)
let width value = stringProperty "width" (string_of_int value)

(* Declare the width of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`. *)
let width value = stringProperty "width" (string_of_int value)

(* Alternative text in case an image can't be displayed. Works with `img`,
`area`, and `input`. *)
let alt value = stringProperty "alt" value



(* Audio and Video *)

(* The `audio` or `video` should play as soon as possible. *)
let autoplay boo = boolProperty "autoplay" boo

(* `audio` or `video` should play as soon as possible. *)
let controls boo = boolProperty "controls" boo 

(* Indicates whether the `audio` or `video` should start playing from the 
start when it's finished *)
let loop boo = boolProperty "loop" boo 

(* Indicates whether the `audio` or `video` should start playing from the
start when it's finished. *)
let preload value = stringProperty "preload" value

(* A URL indicating a poster frame to show until the user plays or seeks the
`video`. *)
let poster value = stringProperty "poster" value

(* Indicates that the `track` should be enabled unless the user's preferences
indicate something different. *)
let default boo = boolProperty "default" boo

(* Specifies the kind of text `track`. *)
let kind value = stringProperty "kind" value

(* A two letter language code indicating the language of the `track` text data. *)
let srclang value = stringProperty "srclang" value



(* iframes *)

(* A space separated list of security restrictions you'd like to lift for an
`iframe`. *)
let sandbox value = stringProperty "sandbox" value

(* Make an `iframe` look like part of the containing document. *)
let seamless boo = boolProperty "seamless" boo

(* An HTML document that will be displayed as the body of an `iframe`. It will
override the content of the `src` attribute if it has been specified. *)
let srcdoc value = stringProperty "srcdoc" value


(* Input *)

(* Defines the type of a `button`, `input`, `embed`, `object`, `script`,
`source`, `style`, or `menu`.*)
let type' value = stringProperty "type" value

(* Defines a default value which will be displayed in a `button`, `option`,
`input`, `li`, `meter`, `progress`, or `param`. *)
let value value = stringProperty "value" value

(* Defines an initial value which will be displayed in an `input` when that
`input` is added to the DOM. Unlike `value`, altering `defaultValue` after the
`input` element has been added to the DOM has no effect. *)
let defaultValue value = stringProperty "defaultValue" value

(* Indicates whether an `input` of type checkbox is checked *)
let checked boo = boolProperty "checked" boo 

(* Provides a hint to the user of what can be entered into an `input` or
`textarea`. *)
let placeholder value = stringProperty "placeholder" value 

(* Defines which `option` will be selected on page load. *)
let selected boo = boolProperty "selected" boo 


(* Input Helpers *)

(* List of types the server accepts, typically a file type.
For `form` and `input`. *)
let accept value = stringProperty "accept" value

(* List of supported charsets in a `form`. *)
let acceptCharset value = stringProperty "acceptCharset" value

(* The URI of a program that processes the information submitted via a `form`. *)
let action value = stringProperty "action" value

(* Indicates whether a `form` or an `input` can have their values automatically
completed by the browser. *)
let autocomplete boo = stringProperty "autocomplete" (if boo then "on" else "off")

(* The element should be automatically focused after the page loaded.
For `button`, `input`, `keygen`, `select`, and `textarea`. *)
let autofocus boo = boolProperty "autofocus" boo 

(* Previous entries into an `input` will be persisted across page loads,
associated with a unique ID. The previous entries will be displayed as
suggestions when the user types into an `input` that has an autosave attribute
with the same unique ID. *)
let autosave value = stringProperty "autosave" value

(* Indicates whether the user can interact with a `button`, `fieldset`,
`input`, `keygen`, `optgroup`, `option`, `select` or `textarea`. *)
let disabled boo = boolProperty "disabled" boo

(* How `form` data should be encoded when submitted with the POST method.
Options include: application/x-www-form-urlencoded, multipart/form-data, and
text/plain. *)
let enctype value = stringProperty "enctype" value

(* Indicates the action of an `input` or `button`. This overrides the action
defined in the surrounding `form`. *)
let formaction value = stringProperty "formAction" value

(* Associates an `input` with a `datalist` tag. The datalist gives some
pre-defined options to suggest to the user as they interact with an input.
The value of the list attribute must match the id of a `datalist` node.
For `input`. *)
let list value = attribute "list" value

(* Defines the minimum number of characters allowed in an `input` or
`textarea`. *)
let minlength n = stringProperty "minlength" (string_of_int n)

(* Defines the maximum number of characters allowed in an `input` or 
`textarea` *)
let maxlength n = stringProperty "maxlength" (string_of_int n)

(* *)

end

module Events = struct

end

module Lazy = struct

end





