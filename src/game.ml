open Player 
open Tile 
open TileStack 
open Random
open List  

type t = {
    banker : int;  
    center_tiles : TileStack.t; 
    discarded_tiles : TileStack.t; 
    players : Player.t list;   
}

(* --- begining of new functions added ---*)
(*TODO: add specifications for newly added functions*)

let rec init_tiles (n: int) : TileStack.t = if (n > 0) then TileStack.push (Tile.return_tile n) (init_tiles (n-1)) else TileStack.empty 

let rec init_players (n: int) : Player.t list = if (n <= 4) then (Player.init_player n) :: init_players (n+1) else []

(*TODO: modification needed -> randomize center tiles using shuffle*)
let init_game (banker_id: int)= {
  banker = banker_id;
  center_tiles = init_tiles 144;
  discarded_tiles = TileStack.empty;
  players = init_players 0
}

let rec assign_n_tiles (tiles : TileStack.t) (player : Player.t) (n: int): Player.t = 
  match n with
  | n when n > 0 -> assign_n_tiles (TileStack.pop tiles) (Player.add_tile player (TileStack.peek tiles)) (n-1)
  | _ -> player

let rec remove_n_tiles (tiles: TileStack.t) (n: int): TileStack.t =
  match n with 
  | n when n > 0 -> remove_n_tiles (TileStack.pop tiles) (n-1)
  | _ -> tiles

let rec assign_tiles_to_players (tiles : TileStack.t) (players : Player.t list) (banker_id: int): Player.t list =
  match players with
  | [] -> []
  | h :: t -> if (Player.player_id h = banker_id) 
    then assign_n_tiles tiles h 14 :: assign_tiles_to_players (remove_n_tiles tiles 14) t banker_id
    else assign_n_tiles tiles h 13 :: assign_tiles_to_players (remove_n_tiles tiles 13) t banker_id

let game_after_init_tile_deals (game : t) : t = {
  banker = game.banker;
  center_tiles = remove_n_tiles game.center_tiles 53;
  discarded_tiles = game.discarded_tiles;
  players = assign_tiles_to_players game.center_tiles game.players game.banker
}

(* --- end of new functions added --- *)

let rec filter = function
| [] -> []
| h :: t -> if is_flower h then filter t else h :: filter t 

let shuffle_tiles (tile_stack: TileStack) = 
  assert TileStack.is_empty tile_stack = False 
  let assign_random_tags = List.map(fun c -> (Random.bits(), c)) tile_stack in 
  let sorted = List.sort compare nd in 
  List.map assign_random_tags sorted 

let pick_tile (game : t) (player:Player.t) (tile: Tile.t): t = {
  banker = game.banker; 
  center_tiles = TileStack.pop center_tiles tile;  
  discarded_tiles = game.discarded_tiles; 
  players = Player.add_tile player tile; 
} 

let steal_tile (game : t) (player:Player.t) (tile: Tile.t) :t = {
  banker = game.banker; 
  center_tiles = game.center_tiles; 
  discarded_tiles = TileStack.pop discarded_tiles tile;
  players = Player.add_tile player tile;
}

let discard_tile (game : t) (player:Player.t) (tile: Tile.t) (id: int) :t ={
  banker = game.banker; 
  center_tiles = game.center_tiles;
  discarded_tiles = TileStack.push discarded_tiles tile; 
  players = Player.remove_tile player id;
}

(**hi julie*)



