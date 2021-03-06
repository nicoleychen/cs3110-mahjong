type t 
(** The abstract type of values representing a game *)

val print_game : t -> unit

val init_tiles : int -> TileStack.t
(** [init_tiles] is a list of [n] unshuffled tiles
Requires: n is 144 for the conventional set up*)

val init_players : int -> Player.t list
(** [init_players] is a list of [n] players with no tiles distirbuted*
Requires: n is 4 for the conventional set up*)

val players : t -> Player.t list
(** [players] is the list of players in [game]*) 

val center_tiles: t -> TileStack.t
(** [center_tiles] is the list of center tiles in [game]*) 

val discarded_tiles: t -> TileStack.t
(** [discarded_tiles] is the list of discarded tiles in [game]*) 

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

val set_up_game : int -> t
(** [set_up_game] is the initial set up of the mahjong game*)

(*
val shuffle_tiles : 'a list -> 'a list 
(** [shuffle_tiles tile_list] takes in a tileStack and returns that tileStack shuffled*)
*)

val filter_flower : Tile.t list -> Tile.t list
(** [filter_flower] returns a list of player's tiles with the flower tiles discarded *)

val new_players : Player.t list -> Player.t -> Tile.t -> (Player.t -> Tile.t -> Player.t) -> Player.t list
(** [new_players] returns a list of players with [player]'s tile list changed by applying f tile *)

val pick_tile: t -> Player.t -> t
(**[pick_tile] removes the first tile from the center tile pile and adds it to the players tiles*)

val steal_tile: t -> Player.t -> t 
(** [steal_tile] removes a tile from the discarded pile and adds it to the players tiles*)

val discard_tile: t -> Player.t -> Tile.t -> t
(** [discard_tile] removes a tile from the players tiles and adds it to the discarded tiles*)


val check_identical: Tile.t -> Tile.t -> Tile.t -> bool
(** [check_identical] checks if the set of three tiles is a winning combination of three identical tiles *)

val check_consecutive: Tile.t -> Tile.t -> Tile.t -> bool
(** [check_consecutive] checks if the set of three tiles are consecutive. tiles should be listed in increasing 
  value, that is, the value for tile1 < value for tile2 < value for tile3*)
