type t 
(** The abstract type of values representing a game *)

val init_tiles : int -> TileStack.t
(** [init_tiles] is a list of [n] unshuffled tiles
Requires: n is 144 for the conventional set up*)

val init_players : int -> Player.t list
(** [init_players] is a list of [n] players with no tiles distirbuted*
Requires: n is 4 for the conventional set up*)

val init_game: int -> t
(** [init_game] is a game with a player with if [banker_id] as the assigned banker, initial tiles as the center tile, empty discardd tiles, and initial players*)

val assign_n_tiles : TileStack.t -> Player.t -> int -> Player.t
(** [assign_n_tiles] is an update status of [player] with the first [n] tiles from [tiles] added to [player]'s tiles*)

val remove_n_tiles: TileStack.t -> int -> TileStack.t
(** [remove_n_tiles] is an updated list of [tiles] with the first [n] tiles removed*)

val  assign_tiles_to_players: TileStack.t -> Player.t list -> int -> Player.t list
(** [assign_tiles_to_players] is an updated list of [players] with the player with id [banker_id] assigned 14 and every other players assigned 13 tiles from [tiles]*)

val game_after_init_tile_deals: t -> t
(** [game_after_init_tile_deals] is the updated status of [game] where the tiles from the center tiles are distribtued accordingly to players*)

(*
val shuffle_tiles : 'a list -> 'a list 
(** [shuffle_tiles tile_list] takes in a tileStack and returns that tileStack shuffled*)
*)

val filter_flower : Tile.t list -> Tile.t list
(** [filter_flower] returns a list of player's tiles with the flower tiles discarded *)

val pick_tile: Player.t -> Tile.t -> 'a
(**[pick_tile] removes a tile from the center tile pile and adds it to the players tiles*)

val steal_tile: Player.t -> Tile.t -> 'a 
(** [steal_tile] removes a tile from the discarded pile and adds it to the players tiles*)

val discard_tile: Player.t -> Tile.t -> 'a 
(** [discard_tile] removes a tile from the players tiles and adds it to the discarded tiles*)