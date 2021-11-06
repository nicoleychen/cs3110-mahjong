type t 
(** abstract data type to represent a stack made of tiles*)

val empty : t 
(** [empty] is the empty stack*)

val is_empty : t -> bool
(** [is_empty] is true when the list is empty, false otherwise*)

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

val remove : Tile.t -> t -> t
(** [remove t] is all but the tile of id [t]. 
if t is not in the tileStack, returns the unchanged tileStack *)

val tileStack_to_string : t -> string
(** [tileStack_to_string] is a string of a tileStack*)

val to_list : t -> t
(**Changes the tileStack to a list*)

val is_in_tileStack : t -> int -> bool
(** [is_in_tileStack] checks if a tile with id [id] is in [tiles]*)