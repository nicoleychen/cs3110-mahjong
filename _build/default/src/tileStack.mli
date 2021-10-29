type t 
(** abstract data type to represent a stack made of tiles*)

val empty : Tile.t list 
(** empty is the empty stack*)

val push : Tile.t -> Tile.t list -> Tile.t list 
(** [push x s] is [s] with [x] pushed on top*)

val peek : Tile.t list -> Tile.t
(**[peek s] is the top element of [s] Raises [Failure] if 
  [s] is empty*)

val pop : Tile.t list -> Tile.t list 
(** [pop s] is all but the top element of [s] Raises [Failure] 
if [s] is empty*)

val size : Tile.t list -> int 
(** [size s] gives you the number of elements in [s] otherwise 
it returns 0 if [s] is empty*)