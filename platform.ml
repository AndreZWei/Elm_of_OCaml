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

		   
