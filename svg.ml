open Decode
open Encode
open Platform
open Platform.Cmd
open Platform.Sub

(* SVG Nodes *)

type 'msg svg = 'msg VirtualDom.node

type 'msg attribute = 'msg VirtualDom.property 

let node name attributes children = 
  let svgNamespace = VirtualDom.property "namespace" (Encode.jsstring "http://www.w3.org/2000/svg")
  in
  VirtualDom.node name (svgNamespace::attributes) children

let text = VirtualDom.text

(* Html Embedding *)

let createSvg attributes children = node "svg" attributes children

let foreignObject attributes children = node "foreignObject" attributes children

(* Animation Elements *)

let animate attributes children = node "animate" attributes children

let animateColor attributes children = node "animateColor" attributes children

let animateMotion attributes children = node "animateMotion" attributes children

let animateTransform attributes children = node "animateTransform" attributes children

let mpath attributes children = node "mpath" attributes children

let set attributes children = node "set" attributes children

(* Containers *)

let a attributes children = node "a" attributes children

let defs attributes children = node "defs" attributes children

let g attributes children = node "g" attributes children

let marker attributes children = node "marker" attributes children

let mask attributes children = node "mask" attributes children

let missingGlyph attributes children = node "missingGlyph" attributes children

let pattern attributes children = node "pattern" attributes children

let switch attributes children = node "switch" attributes children

let symbol attributes children = node "symbol" attributes children

(* Descriptive elements *)

let desc attributes children = node "desc" attributes children

let metadata attributes children = node "metadata" attributes children

let title attributes children = node "title" attributes children

(* Filters *)

let feBlend attributes children = node "feBlend" attributes children

let feColorMatrix attributes children = node "feColorMatrix" attributes children

let feComponentTransfer attributes children = node "feComponentTransfer" attributes children

let feConvolveMatrix attributes children = node "feConvolveMatrix" attributes children

let feDiffuseLighting attributes children = node "feDiffuseLighting" attributes children

let feFlood attributes children = node "feFlood" attributes children

let feFuncA attributes children = node "feFuncA" attributes children

let feFuncB attributes children = node "feFuncB" attributes children

let feFuncG attributes children = node "feFuncG" attributes children

let feFuncR attributes children = node "feFuncR" attributes children

let feGaussianBlur attributes children = node "feGaussianBlur" attributes children

let feImage attributes children = node "feImage" attributes children

let feMerge attributes children = node "feMerge" attributes children

let feMergeNode attributes children = node "feMergeNode" attributes children

let feMorphology attributes children = node "feMorphology" attributes children

let feOffset attributes children = node "feOffset" attributes children

let feSpecularLighting attributes children = node "feSpecularLighting" attributes children

let feTile attributes children = node "feTile" attributes children

let feTurbulence attributes children = node "feTurbulence" attributes children

(* Fonts *)

let font attributes children = node "font" attributes children

let fontFace attributes children = node "fontFace" attributes children

let fontFaceFormat attributes children = node "fontFaceFormat" attributes children

let fontFaceName attributes children = node "fontFaceName" attributes children

let fontFaceSrc attributes children = node "fontFaceSrc" attributes children

let fontFaceUri attributes children = node "fontFaceUri" attributes children

let hkern attributes children = node "hkern" attributes children

let vkern attributes children = node "vkern" attributes children

(* Gradient Elements *)

let linearGradient attributes children = node "linearGradient" attributes children

let radialGradient attributes children = node "radialGradient" attributes children

let stop attributes children = node "stop" attributes children

(* Graphics Elements *)

let circle attributes children = node "circle" attributes children

let ellipse attributes children = node "ecllipse" attributes children

let image attributes children = node "image" attributes children

let line attributes children = node "line" attributes children

let path attributes children = node "path" attributes children

let polygon attributes children = node "polygon" attributes children

let polyline attributes children = node "polyline" attributes children

let rect attributes children = node "rect" attributes children

let use attributes children = node "use" attributes children

(* Light Source elements *)

let feDistantLight attributes children = node "feDistantLight" attributes children

let fePointLight attributes children = node "fePointLight" attributes children

let feSpotLight attributes children = node "feSpotLight" attributes children

(* Text Content Elements *)

let altGlyph attributes children = node "altGlyph" attributes children

let altGlyphDef attributes children = node "altGlyphDef" attributes children

let altGlyphItem attributes children = node "altGlyphItem" attributes children

let glyph attributes children = node "glyph" attributes children

let glyphRef attributes children = node "glyphRef" attributes children

let textPath attributes children = node "textPath" attributes children

let text' attributes children = node "text" attributes children

let tref attributes children = node "tref" attributes children

let tspan attributes children = node "tspan" attributes children

(* Miscellaneous *)

let clipPath attributes children = node "clipPath" attributes children

let colorProfile attributes children = node "colorProfile" attributes children

let cursor attributes children = node "cursor" attributes children

let filter attributes children = node "filter" attributes children

let script attributes children = node "script" attributes children

let style attributes children = node "style" attributes children

let view attributes children = node "view" attributes children


module Attributes = struct

    open VirtualDom
(* Regular Attributes *)

let accentHeight name = attribute "accentHeight" name

let accelerate name = attribute "accelerate" name

let accumulate name = attribute "accumulate" name

let additive name = attribute "additive" name

let alphabetic name = attribute "alphabetic" name

let allowReorder name = attribute "allowReorder" name

let amplitude name = attribute "amplitude" name

let arabicForm name = attribute " arabicForm" name

let ascent name = attribute " ascent" name

let attributeName name = attribute "attributeName" name

let attributeType name = attribute "attributeType" name

let autoReverse name = attribute "autoReverse" name

let azimuth name = attribute "azimuth" name

let baseFrequency name = attribute "baseFrequency" name

let baseProfile name = attribute "baseProfile" name

let bbox name = attribute "bbox" name

let begin' name = attribute "begin" name

let bias name = attribute "bias" name

let by name = attribute "by" name

let calcMode name = attribute "calcMode" name

let capHeight name = attribute "capHeight" name

let class' name = attribute "class" name

let clipPathUnits name = attribute "clipPathUnits" name

let contentScriptType name = attribute "contentScriptType" name

let contentStyleType name = attribute "contentStyleType" name

let cx name = attribute "cx" name

let cy name = attribute "cy" name

let d name = attribute "d" name

let decelerate name = attribute "decelerate" name

let descent name = attribute "descent" name

let diffuseConstant name = attribute "diffuseConstant" name

let divisor name = attribute "divisor" name

let dur name = attribute "dur" name

let dx name = attribute "dx" name

let dy name = attribute "dy" name

let edgeMode name = attribute "edgeMode" name

let elevation name = attribute "elevation" name

let end' name = attribute "end" name

let exponent name = attribute "exponent" name

let externalResourcesRequired name = attribute "externalResourcesRequired" name

let filterRes name = attribute "filterRes" name

let filterUnits name = attribute "filterUnits" name

let format name = attribute "format" name

let from name = attribute "from" name

let fx name = attribute "fx" name

let fy name = attribute "fy" name

let g1 name = attribute "g1" name

let g2 name = attribute "g2" name

let glyphName name = attribute "glyphName" name

let glyphRef name = attribute "glyphRef" name

let gradientTransform name = attribute "gradientTransform" name

let gradientUnits name = attribute "gradientUnits" name

let hanging name = attribute "hanging" name

let height name = attribute "height" name

let horizAdvX name = attribute "horizAdvX" name

let horizOriginX name = attribute "horizOriginX" name

let horizOriginY name = attribute "horizOriginY" name

let id name = attribute "id" name

let ideographic name = attribute "ideographic" name

let in' name = attribute "in'" name

let in2 name = attribute "in2" name

let intercept name = attribute "intercept" name

let k name = attribute "k" name

let k1 name = attribute "k1" name

let k2 name = attribute "k2" name

let k3 name = attribute "k3" name

let k4 name = attribute "k4" name

let kernelMatrix name = attribute "kernelMatrix" name

let kernelUnitLength name = attribute "kernelUnitLength" name

let keyPoints name = attribute "keyPoints" name

let keySplines name = attribute "keySplines" name

let keyTimes name = attribute "keyTimes" name

let lang name = attribute "lang" name

let lengthAdjust name = attribute "lengthAdjust" name

let limitingConeAngle name = attribute "limitingConeAngle" name

let local name = attribute "local" name

let markerHeight name = attribute "markerHeight" name

let markerUnits name = attribute "markerUnits" name

let markerWidth name = attribute "markerWidth" name

let maskContentUnits name = attribute "maskContentUnits" name

let maskUnits name = attribute "maskUnits" name

let mathematical name = attribute "mathematical" name

let max name = attribute "max" name

let media name = attribute "media" name

let method' name = attribute "method" name

let min name = attribute "min" name

let mode name = attribute "mode" name

let name name = attribute "name" name

let numOctaves name = attribute "numOctaves" name

let offset name = attribute "offset" name

let operator name = attribute "operator" name

let order name = attribute "order" name

let orient name = attribute "orient" name

let orientation name = attribute "orientation" name

let origin name = attribute "origin" name

let overlinePosition name = attribute "overlinePosition" name

let overlineThickness name = attribute "overlineThickness" name

let panose1 name = attribute "panose1" name

let path name = attribute "path" name

let pathLength name = attribute "pathLength" name

let patternContentUnits name = attribute "patternContentUnits" name

let patternTransform name = attribute "patternTransform" name

let patternUnits name = attribute "patternUnits" name

let pointOrder name = attribute "pointOrder" name

let points name = attribute "points" name

let pointsAtX name = attribute "pointsAtX" name

let pointsAtY name = attribute "pointsAtY" name

let pointsAtZ name = attribute "pointsAtZ" name

let preserveAlpha name = attribute "preserveAlpha" name

let preserveAspectRatio name = attribute "preserveAspectRatio" name

let primitiveUnits name = attribute "primitiveUnits" name

let r name = attribute "r" name

let radius name = attribute "radius" name

let refX name = attribute "refX" name

let refY name = attribute "refY" name

let renderingIntent name = attribute "renderingIntent" name

let repeatCount name = attribute "repeatCount" name

let repeatDur name = attribute "repeatDur" name

let requiredExtensions name = attribute "requiredExtensions" name

let requiredFeatures name = attribute "requiredFeatures" name

let restart name = attribute "restart" name

let result name = attribute "result" name

let rotate name = attribute "rotate" name

let rx name = attribute "rx" name

let ry name = attribute "ry" name

let scale name = attribute "scale" name

let seed name = attribute "seed" name

let slope name = attribute "slope" name

let spacing name = attribute "spacing" name

let specularConstant name = attribute "specularConstant" name

let specularExponent name = attribute "specularExponent" name

let speed name = attribute "speed" name

let spreadMethod name = attribute "spreadMethod" name

let startOffset name = attribute "startOffset" name

let stdDeviation name = attribute "stdDeviation" name

let stemh name = attribute "stemh" name

let stemv name = attribute "stemv" name

let stitchTiles name = attribute "stitchTiles" name

let strikethroughPosition name = attribute "strikethroughPosition" name

let strikethroughThickness name = attribute "strikethroughThickness" name

let string name = attribute "string" name

let style name = attribute "style" name

let surfaceScale name = attribute "surfaceScale" name

let systemLanguage name = attribute "systemLanguage" name

let tableValues name = attribute "tableValues" name

let target name = attribute "target" name

let targetX name = attribute "targetX" name

let targetY name = attribute "targetY" name

let textLength name = attribute "textLength" name

let title name = attribute "title" name

let to' name = attribute "to" name

let transform name = attribute "transform" name

let type' name = attribute "type'" name

let u1 name = attribute "u1" name

let u2 name = attribute "u2" name

let underlinePosition name = attribute "underlinePosition" name

let underlineThickness name = attribute "underlineThickness" name

let unicode name = attribute "unicode" name

let unicodeRange name = attribute "unicodeRange" name

let unitsPerEm name = attribute "unitsPerEm" name

let vAlphabetic name = attribute "vAlphabetic" name

let vHanging name = attribute "vHanging" name

let vIdeographic name = attribute "vIdeographic" name

let vMathematical name = attribute "vMathematical" name

let values name = attribute "values" name

let version name = attribute "version" name

let vertAdvY name = attribute "vertAdvY" name

let vertOriginX name = attribute "vertOriginX" name

let vertOriginY name = attribute "vertOriginY" name

let viewBox name = attribute "viewBox" name

let viewTarget name = attribute "viewTarget" name

let width name = attribute "width" name

let widths name = attribute "widths" name

let x name = attribute "x" name

let xHeight name = attribute "xHeight" name

let x1 name = attribute "x1" name

let x2 name = attribute "x2" name

let xChannelSelector name = attribute "xChannelSelector" name

let xlinkActuate name = attributeNS "http://www.w3.org/1999/xlink" "xlink:actuate" name

let xlinkArcrole name = attributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole" name

let xlinkHref name = attributeNS "http://www.w3.org/1999/xlink" "xlink:href" name

let xlinkRole name = attributeNS "http://www.w3.org/1999/xlink" "xlink:role" name

let xlinkShow name = attributeNS "http://www.w3.org/1999/xlink" "xlink:show" name

let xlinkTitle name = attributeNS "http://www.w3.org/1999/xlink" "xlink:title" name

let xlinkType name = attributeNS "http://www.w3.org/1999/xlink" "xlink:type" name

let xmlBase name = attributeNS "http://www.w3.org/1999/namespace" "xml:base" name

let xmlLang name = attributeNS "http://www.w3.org/1999/namespace" "xml:lang" name

let xmlSpace name = attributeNS "http://www.w3.org/1999/namespace" "xml:space" name

let y name = attribute "y" name

let y1 name = attribute "y1" name

let y2 name = attribute "y2" name

let yChannelSelector name = attribute "yChannelSelector" name

let z name = attribute "z" name

let zoomAndPan name = attribute "zoomAndPan" name

(* Presentation attributes *)

let alignmentBaseline name = attribute "alignmentBaseline" name

let baselineShift name = attribute "baselineShift" name

let clipPath name = attribute "clipPath" name

let clipRule name = attribute "clipRule" name

let clip name = attribute "clip" name

let colorInterpolationFilters name = attribute "colorInterpolationFilters" name

let colorInterpolation name = attribute "colorInterpolation" name

let colorProfile name = attribute "colorProfile" name

let colorRendering name = attribute "colorRendering" name

let color name = attribute "color" name

let cursor name = attribute "cursor" name

let direction name = attribute "direction" name

let direction name = attribute "direction" name

let display name = attribute "display" name

let dominantBaseline name = attribute "dominantBaseline" name

let enableBackground name = attribute "enableBackground" name

let fillOpacity name = attribute "fillOpacity" name

let fillRule name = attribute "fillRule" name

let fill name = attribute "fill" name

let filter name = attribute "filter" name

let floodColor name = attribute "floodColor" name

let floodOpacity name = attribute "floodOpacity" name

let fontFamily name = attribute "fontFamily" name

let fontSizeAdjust name = attribute "fontSizeAdjust" name

let fontSize name = attribute "fontSize" name

let fontStretch name = attribute "fontStretch" name

let fontStyle name = attribute "fontStyle" name

let fontVariant name = attribute "fontVariant" name

let fontWeight name = attribute "fontWeight" name

let glyphOrientationHorizontal name = attribute "glyphOrientationHorizontal" name

let glyphOrientationVertical name = attribute "glyphOrientationVertical" name

let imageRendering name = attribute "imageRendering" name

let kerning name = attribute "kerning" name

let letterSpacing name = attribute "letterSpacing" name

let lightingColor name = attribute "lightingColor" name

let markerEnd name = attribute "markerEnd" name

let markerMid name = attribute "markerMid" name

let markerStart name = attribute "markerStart" name

let mask name = attribute "mask" name

let opacity name = attribute "opacity" name

let overflow name = attribute "overflow" name

let pointerEvents name = attribute "pointerEvents" name

let shapeRendering name = attribute "shapeRendering" name

let stopColor name = attribute "stopColor" name

let stopOpacity name = attribute "stopOpacity" name

let strokeDasharray name = attribute "strokeDasharray" name

let strokeDashoffset name = attribute "strokeDashoffset" name

let strokeLinecap name = attribute "strokeLinecap" name

let strokeLinejoin name = attribute "strokeLinejoin" name

let strokeMiterlimit name = attribute "strokeMiterlimit" name

let strokeOpacity name = attribute "strokeOpacity" name

let strokeWidth name = attribute "strokeWidth" name

let stroke name = attribute "stroke" name

let textAnchor name = attribute "textAnchor" name

let textDecoration name = attribute "textDecoration" name

let textRendering name = attribute "textRendering" name

let unicodeBidi name = attribute "unicodeBidi" name

let visibility name = attribute "visibility" name

let wordSpacing name = attribute "wordSpacing" name

let writingMode name = attribute "writingMode" name 


end

module Events = struct

(* Custom Events *)

let on name decoder = VirtualDom.on name decoder
    
let simpleOn name = (fun msg -> on name (succeed msg))

(* Animation *)

let onBegin msg = simpleOn "begin" msg

let onEnd msg = simpleOn "end" msg

let onRepeat msg = simpleOn "repeat" msg

(* Document event attributes *)

let onAbort msg = simpleOn "abort" msg

let onError msg = simpleOn "error" msg

let onResize msg = simpleOn "resize" msg

let onScroll msg = simpleOn "scroll" msg

let onLoad msg = simpleOn "load" msg

let onUnLoad msg = simpleOn "unload" msg

let onZoom msg = simpleOn "zoom" msg

(* Graphical events attributes *)

let onActivate msg = simpleOn "activate" msg

let onClick msg = simpleOn "click" msg

let onFocusIn msg = simpleOn "focusin" msg

let onFocusOut msg = simpleOn "focusout" msg

let onMouseDown msg = simpleOn "mousedown" msg

let onMouseMove msg = simpleOn "mousemove" msg

let onMouseOut msg = simpleOn "mouseout" msg

let onMouseUp msg = simpleOn "mouseup" msg

end



