	type msg 
	type 'a html = 'a Virtualdom.node
	type 'a attribute = 'a Virtualdom.property

	(* Custom Nodes *)
	val text: string -> msg html 
	val node: string -> (msg attribute) list -> (msg html) list -> (msg html)

	(* Headers *)
	val h1: (msg attribute) list -> (msg html) list -> (msg html) 
	val h2: (msg attribute) list -> (msg html) list -> (msg html) 
	val h3: (msg attribute) list -> (msg html) list -> (msg html) 
	val h4: (msg attribute) list -> (msg html) list -> (msg html) 
	val h5: (msg attribute) list -> (msg html) list -> (msg html) 
	val h6: (msg attribute) list -> (msg html) list -> (msg html) 

	(* Grouping Content *)
	val div: (msg attribute) list -> (msg html) list -> (msg html) 
	val p: (msg attribute) list -> (msg html) list -> (msg html) 
	val hr: (msg attribute) list -> (msg html) list -> (msg html) 
	val pre: (msg attribute) list -> (msg html) list -> (msg html) 
	val blockquote: (msg attribute) list -> (msg html) list -> (msg html) 

	(* Text *)
	val span: (msg attribute) list -> (msg html) list -> (msg html)
	val a: (msg attribute) list -> (msg html) list -> (msg html)
	val code: (msg attribute) list -> (msg html) list -> (msg html)
	val em: (msg attribute) list -> (msg html) list -> (msg html)
	val strong: (msg attribute) list -> (msg html) list -> (msg html)
	val i: (msg attribute) list -> (msg html) list -> (msg html)
	val b: (msg attribute) list -> (msg html) list -> (msg html)
	val u: (msg attribute) list -> (msg html) list -> (msg html)
	val sub: (msg attribute) list -> (msg html) list -> (msg html)
	val sup: (msg attribute) list -> (msg html) list -> (msg html)
	val br: (msg attribute) list -> (msg html) list -> (msg html)

	(* Lists *)
	val ol: (msg attribute) list -> (msg html) list -> (msg html)
	val ul: (msg attribute) list -> (msg html) list -> (msg html)
	val li: (msg attribute) list -> (msg html) list -> (msg html)
	val dl: (msg attribute) list -> (msg html) list -> (msg html)
	val dt: (msg attribute) list -> (msg html) list -> (msg html)
	val dd: (msg attribute) list -> (msg html) list -> (msg html)

	(* Embedded Content *)
	val img: (msg attribute) list -> (msg html) list -> (msg html)
	val iframe: (msg attribute) list -> (msg html) list -> (msg html)
	val canvas: (msg attribute) list -> (msg html) list -> (msg html)
	val svg: (msg attribute) list -> (msg html) list -> (msg html)
	val math: (msg attribute) list -> (msg html) list -> (msg html)

	(* Inputs *)
	val form: (msg attribute) list -> (msg html) list -> (msg html)
	val input: (msg attribute) list -> (msg html) list -> (msg html)
	val textarea: (msg attribute) list -> (msg html) list -> (msg html)
	val button: (msg attribute) list -> (msg html) list -> (msg html)
	val select: (msg attribute) list -> (msg html) list -> (msg html)
	val option: (msg attribute) list -> (msg html) list -> (msg html)

	(* Sections *)
	val section: (msg attribute) list -> (msg html) list -> (msg html)
	val nav: (msg attribute) list -> (msg html) list -> (msg html)
	val article: (msg attribute) list -> (msg html) list -> (msg html)
	val aside: (msg attribute) list -> (msg html) list -> (msg html)
	val header: (msg attribute) list -> (msg html) list -> (msg html)
	val footer: (msg attribute) list -> (msg html) list -> (msg html)
	val address: (msg attribute) list -> (msg html) list -> (msg html)
	val main': (msg attribute) list -> (msg html) list -> (msg html)
	val body: (msg attribute) list -> (msg html) list -> (msg html)


