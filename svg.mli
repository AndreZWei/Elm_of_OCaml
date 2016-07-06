open VirtualDom
open Decode
open Encode
open Platform
open Platform.Cmd
open Platform.Sub
open Html


(* SVG Nodes *)

type 'msg svg

type 'msg attribute

val node: string -> ('msg attribute) list -> ('msg svg) list -> 'msg svg

val text: string -> 'msg svg

(* Html Embedding *)

val svg: ('msg attribute) list -> ('msg svg) list -> 'msg html

val foreignObject: ('msg attribute) list -> ('msg html) list -> 'msg svg

(* Graphics Elements *)

val circle: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val ellipse: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val image: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val line: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val path: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val polygon: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val polyline: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val rect: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val use: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Animation Elements *)

val animate: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val animatecolor: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val animateMotion: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val animateTransform: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val mpath: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val set: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Descriptive Elements *)

val desc: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val metadata: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val title: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Containers *)

val a: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val defs: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val g:  ('msg attribute) list -> ('msg svg) list -> 'msg svg

val marker:  ('msg attribute) list -> ('msg svg) list -> 'msg svg

val mask: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val missingGlyph: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val pattern: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val switch: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val symbol: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Text *)

val altGlyph: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val altGlyphDef: ('msg attribute) list -> ('msg svg) list -> 'msg svg