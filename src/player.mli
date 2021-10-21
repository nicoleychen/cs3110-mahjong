type t
(** The abstract type of values representing a player *)

val init_banker: t 
(**The default state of a the banker*)

val init_nonbanker_player : t -> t
(** [init_player] is the default state of a new player *) 

val add_tile : t -> Tile.t -> t
(** [add_tile] is the new state of [player] after adding [tile] to their list of tiles *)

val is_banker : t -> bool
(** [is_banker] is whether [player] is the banker *)

val get_tiles : t -> Tile.t list
(** [get_titles] is the list of [player]'s tiles *)