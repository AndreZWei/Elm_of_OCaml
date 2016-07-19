open VirtualDom
open Decode
open Encode
open Platform
open Platform.Cmd
open Platform.Sub
open Html


(* SVG Nodes *)

type 'msg svg = 'msg VirtualDom.node

type 'msg attribute = 'msg VirtualDom.property

val node: string -> ('msg attribute) list -> ('msg svg) list -> 'msg svg

val text: string -> 'msg svg

(* Html Embedding *)

val createSvg: ('msg attribute) list -> ('msg svg) list -> 'msg html

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

val animateColor: ('msg attribute) list -> ('msg svg) list -> 'msg svg

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

val altGlyphItem: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val glyph: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val glyphRef: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val textPath: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val text': ('msg attribute) list -> ('msg svg) list -> 'msg svg

val tref: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val tspan: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Fonts *)

val font: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val fontFace:  ('msg attribute) list -> ('msg svg) list -> 'msg svg

val fontFaceFormat: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val font: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val fontFaceSrc: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val fontFaceUri: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val hkern: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val vkern: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Gradients *)

val linearGradient: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val radialGradient: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val stop:  ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Filters *)

val feBlend: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feColorMatrix: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feComponentTransfer: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feConvolveMatrix: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feDiffuseLighting: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feFlood: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feFuncA: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feFuncB: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feFuncG: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feFuncR: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feGaussianBlur: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feImage: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feMerge: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feMergeNode: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feMorphology: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feOffset: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feSpecularLighting: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feTile:  ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feTurbulence: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Light Source Elements *)

val feDistantLight: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val fePointLight: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val feSpotLight: ('msg attribute) list -> ('msg svg) list -> 'msg svg

(* Miscellaneous *)

val clipPath: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val colorProfile: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val cursor: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val filter: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val script: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val style: ('msg attribute) list -> ('msg svg) list -> 'msg svg

val view: ('msg attribute) list -> ('msg svg) list -> 'msg svg


module Attributes: sig

(* Regular Attributes *)

val accentHeight: float -> 'msg attribute

val accelerate: string -> 'msg attribute

val accumulate: string -> 'msg attribute

val additive: string -> 'msg attribute

val alphabetic: string -> 'msg attribute

val allowReorder: string -> 'msg attribute
	
val amplitude: string -> 'msg attribute

val arabicForm: string -> 'msg attribute

val ascent: string -> 'msg attribute

val attributeName: string -> 'msg attribute

val attributeType: string -> 'msg attribute

val autoReverse: string -> 'msg attribute

val azimuth: string -> 'msg attribute

val baseFrequency: string -> 'msg attribute

val baseProfile: string -> 'msg attribute

val bbox: string -> 'msg attribute

val begin': string -> 'msg attribute

val bias: string -> 'msg attribute

val by: string -> 'msg attribute 

val calcMode: string -> 'msg attribute

val capHeight: float -> 'msg attribute

val class': string -> 'msg attribute

val clipPathUnits: string -> 'msg attribute

val contentScriptType: string -> 'msg attribute

val contentStyleType: string -> 'msg attribute

val cx: float -> 'msg attribute 

val cy: float -> 'msg attribute 

val d: string -> 'msg attribute

val decelerate: string -> 'msg attribute

val descent: string -> 'msg attribute

val diffuseConstant: string -> 'msg attribute

val divisor: string -> 'msg attribute

val dur: string -> 'msg attribute

val dx: string -> 'msg attribute 

val dy: string -> 'msg attribute 

val edgeMode: string -> 'msg attribute

val elevation: float -> 'msg attribute

val end': string -> 'msg attribute

val exponent: string -> 'msg attribute

val externalResourcesRequired: string -> 'msg attribute

val filterRes: string -> 'msg attribute 

val filterUnits: string -> 'msg attribute

val format: string -> 'msg attribute

val from: string -> 'msg attribute

val fx: float -> 'msg attribute 

val fy: float -> 'msg attribute 

val g1: string -> 'msg attribute 

val g2: string -> 'msg attribute 

val glyphName: string -> 'msg attribute

val glyphRef: string -> 'msg attribute

val gradientTransform: string -> 'msg attribute

val gradientUnits: string -> 'msg attribute

val hanging: string -> 'msg attribute

val height: float -> 'msg attribute

val horizAdvX: float -> 'msg attribute

val horizOriginX: float -> 'msg attribute 

val horizOriginY: float -> 'msg attribute

val id: string -> 'msg attribute 

val ideographic: string -> 'msg attribute

val in': string -> 'msg attribute

val in2: string -> 'msg attribute

val intercept: string -> 'msg attribute

val k: string -> 'msg attribute

val k1: string -> 'msg attribute 

val k2: string -> 'msg attribute 

val k3: string -> 'msg attribute 

val k4: string -> 'msg attribute 

val kernelMatrix: float list -> 'msg attribute 

val kernelUnitLength: string -> 'msg attribute

val keyPoints: string -> 'msg attribute

val keySplines: string -> 'msg attribute 

val keyTimes: float list -> 'msg attribute

val lang: string -> 'msg attribute

val lengthAdjust: string -> 'msg attribute

val limitingConeAngle: string -> 'msg attribute

val local: string -> 'msg attribute 

val markerHeight: float -> 'msg attribute

val markerUnits: string -> 'msg attribute

val markerWidth: float -> 'msg attribute 

val maskContentUnits: string -> 'msg attribute 

val maskUnits: string -> 'msg attribute 

val mathematical: string -> 'msg attribute 

val max: float -> 'msg attribute

val media: string -> 'msg attribute

val method': string -> 'msg attribute

val min: float -> 'msg attribute

val mode: string -> 'msg attribute 

val name: string -> 'msg attribute

val numOctaves: int -> 'msg attribute

val offset: float -> 'msg attribute 

val operator: string -> 'msg attribute

val order: string -> 'msg attribute 

val orient: string -> 'msg attribute 

val orientation: string -> 'msg attribute

val origin: string -> 'msg attribute 

val overlinePosition: float -> 'msg attribute

val overlineThickness: float -> 'msg attribute

val panose1: string -> 'msg attribute

val path: string -> 'msg attribute

val pathLength: float -> 'msg attribute

val patternContentUnits: string -> 'msg attribute

val patternTransform: string -> 'msg attribute

val patternUnits: string -> 'msg attribute

val pointOrder: string -> 'msg attribute

val points: (float * float) list -> 'msg attribute

val pointsAtX: float -> 'msg attribute

val pointsAtY: float -> 'msg attribute

val pointsAtZ: float -> 'msg attribute

val preserveAlpha: string -> 'msg attribute

val preserveAspectRatio: string -> 'msg attribute

val primitiveUnits: string -> 'msg attribute

val r: float -> 'msg attribute

val radius: string -> 'msg attribute

val refX: string -> 'msg attribute

val refY: string -> 'msg attribute

val renderingIntent: string -> 'msg attribute

val repeatCount: string -> 'msg attribute

val repeatDur: string -> 'msg attribute

val requiredExtensions: string -> 'msg attribute

val requiredFeatures: string -> 'msg attribute

val restart: string -> 'msg attribute

val result: string -> 'msg attribute

val rotate: string -> 'msg attribute

val rx: float -> 'msg attribute 

val ry: float -> 'msg attribute 

val scale: string -> 'msg attribute

val seed: string -> 'msg attribute

val slope: string -> 'msg attribute

val spacing: string -> 'msg attribute

val specularConstant: string -> 'msg attribute

val specularExponent: string -> 'msg attribute

val speed: string -> 'msg attribute

val spreadMethod: string -> 'msg attribute

val startOffset: string -> 'msg attribute

val stdDeviation: string -> 'msg attribute

val stemh: string -> 'msg attribute

val stemv: string -> 'msg attribute

val stitchTiles: string -> 'msg attribute

val strikethroughPosition: string -> 'msg attribute

val strikethroughThickness: string -> 'msg attribute

val string: string -> 'msg attribute

val style: string -> 'msg attribute

val surfaceScale: string -> 'msg attribute

val systemLanguage: string -> 'msg attribute

val tableValues: string -> 'msg attribute

val target: string -> 'msg attribute

val targetX: float -> 'msg attribute

val targetY: float -> 'msg attribute

val textLength: float -> 'msg attribute

val title: string -> 'msg attribute

val to': string -> 'msg attribute 

val transform: string -> 'msg attribute

val translate: float -> 'msg attribute

val type': string -> 'msg attribute

val u1: string -> 'msg attribute 

val u2: string -> 'msg attribute 

val underlinePosition: float -> 'msg attribute

val underlineThickness: float -> 'msg attribute

val unicode: string -> 'msg attribute

val unicodeRange: string -> 'msg attribute

val unitsPerEm: string -> 'msg attribute

val vAlphabetic: string -> 'msg attribute

val vHanging: string -> 'msg attribute

val vIdeographic: string -> 'msg attribute

val vMathematical: string -> 'msg attribute

val values: string -> 'msg attribute

val version: string -> 'msg attribute

val vertAdvY: string -> 'msg attribute

val vertOriginX: string -> 'msg attribute

val vertOriginY: string -> 'msg attribute

val viewBox: float list -> 'msg attribute

val viewTarget: string -> 'msg attribute

val width: float -> 'msg attribute

val widths: string -> 'msg attribute

val x: float -> 'msg attribute

val xHeight: float -> 'msg attribute

val x1: float -> 'msg attribute 

val x2: float -> 'msg attribute 

val xChannelSelector: string -> 'msg attribute

val xlinkActuate: string -> 'msg attribute 

val xlinkArcrole: string -> 'msg attribute

val xlinkHref: string -> 'msg attribute

val xlinkRole: string -> 'msg attribute

val xlinkShow: string -> 'msg attribute

val xlinkTitle: string -> 'msg attribute

val xlinkType: string -> 'msg attribute

val xmlBase: string -> 'msg attribute

val xmlLang: string -> 'msg attribute

val xmlSpace: string -> 'msg attribute

val y: float -> 'msg attribute

val y1: float -> 'msg attribute 

val y2: float -> 'msg attribute 

val yChannelSelector: string -> 'msg attribute

val z: float -> 'msg attribute

val zoomAndPan: string -> 'msg attribute

(* Presentation attributes *)

val alignmentBaseline: string -> 'msg attribute

val baselineShift: string -> 'msg attribute

val clipPath: string -> 'msg attribute

val clipRule: string -> 'msg attribute

val clip: string -> 'msg attribute

val colorInterpolationFilters: string -> 'msg attribute

val colorInterpolation: string -> 'msg attribute

val colorProfile: string -> 'msg attribute

val colorRendering: string -> 'msg attribute 

val color: string -> 'msg attribute 

val cursor: string -> 'msg attribute

val direction: string -> 'msg attribute

val direction: string -> 'msg attribute 

val display: string -> 'msg attribute 

val dominantBaseline: string -> 'msg attribute

val enableBackground: string -> 'msg attribute 

val fillOpacity: string -> 'msg attribute

val fillRule: string -> 'msg attribute

val fill: string -> 'msg attribute 

val filter: string -> 'msg attribute 

val floodColor: string -> 'msg attribute

val floodOpacity: string -> 'msg attribute

val fontFamily: string -> 'msg attribute

val fontSizeAdjust: string -> 'msg attribute

val fontSize: string -> 'msg attribute

val fontStretch: string -> 'msg attribute

val fontStyle: string -> 'msg attribute

val fontVariant: string -> 'msg attribute

val fontWeight: string -> 'msg attribute

val glyphOrientationHorizontal: string -> 'msg attribute

val glyphOrientationVertical: string -> 'msg attribute 

val imageRendering: string -> 'msg attribute

val kerning: string -> 'msg attribute

val letterSpacing: string -> 'msg attribute

val lightingColor: string -> 'msg attribute

val markerEnd: string -> 'msg attribute

val markerMid: string -> 'msg attribute

val markerStart: string -> 'msg attribute

val mask: string -> 'msg attribute

val opacity: string -> 'msg attribute

val overflow: string -> 'msg attribute

val pointerEvents: string -> 'msg attribute

val shapeRendering: string -> 'msg attribute 

val stopColor: string -> 'msg attribute

val stopOpacity: string -> 'msg attribute

val strokeDasharray: string -> 'msg attribute

val strokeDashoffset: string -> 'msg attribute 

val strokeLinecap: string -> 'msg attribute 

val strokeLinejoin: string -> 'msg attribute

val strokeMiterlimit: string -> 'msg attribute 

val strokeOpacity: string -> 'msg attribute 

val strokeWidth: string -> 'msg attribute

val stroke: string -> 'msg attribute

val textAnchor: string -> 'msg attribute

val textDecoration: string -> 'msg attribute

val textRendering: string -> 'msg attribute

val unicodeBidi: string -> 'msg attribute

val visibility: string -> 'msg attribute

val wordSpacing: string -> 'msg attribute

val writingMode: string -> 'msg attribute

end

module Events : sig

(* Animation event attributes *)

val onBegin: 'msg -> 'msg attribute

val onEnd: 'msg -> 'msg attribute

val onRepeat: 'msg -> 'msg attribute
	
val onBegin: 'msg -> 'msg attribute

(* Document event attributes *)

val onAbort: 'msg -> 'msg attribute

val onError: 'msg -> 'msg attribute

val onResize: 'msg -> 'msg attribute

val onScroll: 'msg -> 'msg attribute

val onLoad: 'msg -> 'msg attribute

val onUnLoad: 'msg -> 'msg attribute

val onZoom: 'msg -> 'msg attribute

(* Graphical events attributes *)

val onActivate: 'msg -> 'msg attribute

val onClick: 'msg -> 'msg attribute

val onFocusIn: 'msg -> 'msg attribute

val onFocusOut: 'msg -> 'msg attribute

val onMouseDown: 'msg -> 'msg attribute

val onMouseMove: 'msg -> 'msg attribute

val onMouseOut: 'msg -> 'msg attribute

val onMouseUp: 'msg -> 'msg attribute

(* Custon Events *)

val on: string -> 'msg decoder -> 'msg attribute

end

