open TileStack
open Tile 

type t = {
  id : int;
  (* banker : bool; *)
  tiles : TileStack.t;
  score : int;
}
(* 
type banker = player(id = "Player 1"; banker = true ; tiles = TileStack.t; score = 0)

let init_nonbanker_players p_id = {
  id = p_id
  banker = false
  tiles = []
  score = 0
} *)

let init_player p_id = {
  id = p_id
  tiles = TileStack.empty
  score = 0
}

let add_tile player tile = {
    id = player.id
    (* banker = player.is_banker *)
    tiles = tile :: player.tiles
    score = player.score
  }

(* let is_banker player = player.banker  *)

let get_tiles player = player.tiles 

