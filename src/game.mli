type t 
(** The abstract type of values representing a game *)


val shuffle_tiles : 'a list -> 'a list 
(** [shuffle_tiles tile_list] takes in a tileStack and returns that tileStack shuffled*)

val assign_banker : 'a list -> int -> bool
(** [assign_banker] cycles through the list players and assigns player with id n the role of banker. *)

val filter : 'a list -> 'a list -> 'a list
(** [filter] returns a list of player's tiles with the flower tiles discarded *)

val check_bankertile: t -> 'a -> t
(** [check_bankertile] adds a tile to the player's list of tiles if player is banker and does not have the required amount of tiless*)

