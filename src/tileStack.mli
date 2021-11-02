type t 
(** abstract data type to represent a stack made of tiles*)

val empty : t 
(** empty is the empty stack*)

val is_empty : t -> bool

val push : Tile.t -> t -> t
(** [push x s] is [s] with [x] pushed on top*)

val peek : t -> Tile.t
(**[peek s] is the top element of [s] Raises [Failure] if 
  [s] is empty*)

val pop : t -> t
(** [pop s] is all but the top element of [s] Raises [Failure] 
if [s] is empty*)

val size : t -> int 
(** [size s] gives you the number of elements in [s] otherwise 
it returns 0 if [s] is empty*)