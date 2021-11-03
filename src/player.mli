type t
(** The abstract type of values representing a player *)

val init_player : int -> t
(** [init_player] is the default state of a new player *) 

val player_id: t -> int

val remove_tile: t -> Tile.t -> t
(** [remove_tile] is the new state of [player] after removing the tile with [tile_id] from their list of tiles *)

val add_tile : t -> Tile.t -> t
(** [add_tile] is the new state of [player] after adding [tile] to their list of tiles *)

val get_tiles : t -> TileStack.t
(** [get_titles] is the list of [player]'s tiles *)