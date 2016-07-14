open Platform
open Platform.Cmd
open Utils

type ('err, 'ok) task = (('err, 'ok) Platform.task)

let andThen task tagger = 
	callFun2 "_elm_lang$core$Native_Scheduler.andThen" task tagger

let succeed task = 
	callFun "_elm_lang$core$Native_Scheduler.succeed" task

let fail task = 
	callFun "_elm_lang$core$Native_Scheduler.fail" task

(* Mapping *)

let map func taskA = 
	andThen taskA (fun a -> succeed (func a))

let map2 func taskA taskB = 
	let task1 = andThen taskA (fun a -> taskB)
	in
	andThen task1 (fun a b -> succeed (func a b))

let map3 func taskA taskB taskC =
	let task1 = andThen taskA (fun a -> taskB) in 
	let task2 = andThen task1 (fun a b -> taskC) 
	in
	andThen task2 (fun a b c -> succeed (func a b c))

let map4 func taskA taskB taskC taskD =
	let task1 = andThen taskA (fun a -> taskB) in 
	let task2 = andThen task1 (fun a b -> taskC) in
	let task3 = andThen task2 (fun a b c -> taskD) 
	in
	andThen task3 (fun a b c d -> succeed (func a b c d))

let andMap taskFunc taskValue = 
	let task1 = andThen taskFunc (fun func -> taskValue)
	in
	andThen task1 (fun func value -> succeed (func value))

(* Chaining *)

let rec sequence tasks = 
	match tasks with 
	|	[] -> succeed []
	|	(task :: remainingTasks) -> map2 (fun a b -> a::b) task (sequence remainingTasks)

(* Errors *)

let onError task tagger = 
	callFun2 "elm_lang$core$Native_Scheduler.onError" task tagger

let mapError f task = 
	onError task (fun err -> fail (f err)) 