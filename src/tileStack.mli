type 'a t 
(**abstract data type to represent a stack made fo tiles*)

val empty : 'a list 
(**empty is the empty stack*)

val push : 'a -> 'a list -> 'a list 
(** [push x s] is [s] with [x] pushed on top*)

val peek : 'a list -> 'a 
(**[peek s] is the top element of [s] Raises [Failure] if 
  [s] is empty*)

val pop : 'a list -> 'a list 
(** [pop s] is all but the top element of [s] Raises [Failure] 
if [s] is empty*)

val size : 'a list -> int 
(** [size s] gives you the number of elements in [s] otherwise 
it returns 0 if [s] is empty*)