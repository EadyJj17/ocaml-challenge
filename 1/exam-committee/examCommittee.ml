type vote = StrongReject | WeakReject | WeakAccept | StrongAccept
let decide_exam (v1 : vote) (v2 : vote) (v3 : vote) : bool =
   if (v1 == StrongReject || v2 == StrongReject || v3 == StrongReject) then
      false
   else if (v1 == WeakReject && v2 == WeakReject || v1 == WeakReject && v3 == WeakReject || v2 == WeakReject && v3 == WeakReject) then
      false
   else true;;

   assert(decide_exam WeakReject StrongAccept StrongReject = false);;
