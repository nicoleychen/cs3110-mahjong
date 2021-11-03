type t 
(** The abstract type of values representing a game *)

val shuffle_tiles : 'a list -> 'a list 
(** [shuffle_tiles tile_list] takes in a tileStack and returns that tileStack shuffled*)

val filter : Tile.t list -> Tile.t list
(** [filter] returns a list of player's tiles with the flower tiles discarded *)

val pick_tile: Player.t -> Tile.t -> 'a
(**[pick_tile] removes a tile from the center tile pile and adds it to the players tiles*)

val steal_tile: Player.t -> Tile.t -> 'a 
(** [steal_tile] removes a tile from the discarded pile and adds it to the players tiles*)

val discard_tile: Player.t -> Tile.t -> 'a 
(** [discard_tile] removes a tile from the players tiles and adds it to the discarded tiles*)

val check_identical: Tile.t -> Tile.t -> Tile.t -> bool
(** [check_identical] checks if the set of three tiles is a winning combination of three identical tiles *)
  