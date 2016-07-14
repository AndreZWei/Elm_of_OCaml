open Platform
open Platform.Cmd
open Utils

type ('err, 'ok) task = (('err, 'ok) Platform.task)

val succeed: 'b -> ('a, 'b) task

val fail: 'a -> ('a, 'b) task

(* Mapping *)

val map: ('a -> 'b) -> ('x, 'a) task -> ('x, 'b) task

val map2: ('a -> 'b -> 'result) -> ('x, 'a) task -> ('x, 'b) task -> ('x, 'result) task

val map3: ('a -> 'b -> 'c -> 'result) -> ('x, 'a) task -> ('x, 'b) task
-> ('x, 'c) task -> ('x, 'result) task

val map4: ('a -> 'b -> 'c -> 'd -> 'result) -> ('x, 'a) task -> ('x, 'b) task
-> ('x, 'c) task -> ('x, 'd) task -> ('x, 'result) task

val andMap: ('x, ('a -> 'b)) task -> ('x, 'a) task -> ('x, 'b) task

(* Chaining *)

val andThen: ('x, 'a) task -> ('a -> ('x, 'b) task) -> ('x, 'b) task

val sequence: ('x, 'a) task list -> ('x, ('a list)) task

(* Errors *)

val onError: ('x, 'a) task -> ('x -> ('y, 'a) task) -> ('y, 'a) task

val mapError: ('x -> 'y) -> ('x, 'a) task -> ('y, 'a) task 