type t 
(** The abstract type of values representing a game *)

val shuffle_tiles : 'a list -> 'a list 
(** [shuffle_tiles tile_list] takes in a tileStack and returns that tileStack shuffled*)

val filter : Tile.t list -> Tile.t list
(** [filter] returns a list of player's tiles with the flower tiles discarded *)