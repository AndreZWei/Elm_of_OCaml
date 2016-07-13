open Utils
  
type 'flags program = Program
			
type ('err, 'ok) task = Task

type processId = ProcessId

type ('appMsg, 'selfMsg) router = Router

let sendToApp router msg =
  callFun2 "_elm_lang$core$Native_Platform.sendToApp"
	   router msg

let sendToSelf router msg =
  callFun2 "_elm_lang$core$Native_Platform.sendToSelf"
	  router msg

let hack msg =
  callFun "_elm_lang$core$Native_Scheduler.succeed"
	  msg

module Cmd = struct

    type 'msg cmd = Cmd

    let map f cmd =
      callFun2 "_elm_lang$core$Native_Platform.map"
	      f cmd

    let batch list =
      callFun "_elm_lang$core$Native_Platform.batch"
	      list

    let none =
      batch []

  end

module Sub = struct

    type 'msg sub = Sub

    let map f sub =
      callFun2 "_elm_lang$core$Native_Platform.map"
	      f sub

    let batch list =
      callFun "_elm_lang$core$Native_Platform.batch"
	      list

    let none =
      batch []

  end
