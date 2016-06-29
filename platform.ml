open Utils
  
type 'flags program = Program
			
type ('err, 'ok) task = Task

type processId = ProcessId

type ('appMsg, 'selfMsg) router = Router

let sendToApp router msg =
  let argList = toList2 router msg
  in
  callFun "_elm_lang$core$Native_Platform.sendToApp" argList

let sendToSelf router msg =
  let argList = toList2 router msg
  in
  callFun "_elm_lang$core$Native_Platform.sendToSelf" argList

let hack msg =
  let argList = toList msg
  in
  callFun "_elm_lang$core$Native_Scheduler.succeed" argList

module Cmd = struct

    type 'msg cmd = Cmd

    let map f cmd =
      let argList = toList2 f cmd
      in
      callFun "_elm_lang$core$Native_Platform.map" argList

    let batch list =
      let argList = toList list
      in
      callFun "_elm_lang$core$Native_Platform.batch" argList

    let none =
      batch []

  end

module Sub = struct

    type 'msg sub = Sub

    let map f sub =
      let argList = toList2 f sub
      in
      callFun "_elm_lang$core$Native_Platform.map" argList

    let batch list =
      let argList = toList list
      in
      callFun "_elm_lang$core$Native_Platform.batch" argList

    let none =
      batch []

  end
