open TileStack
open Tile 

type t = {
  id : int;
  tiles : TileStack.t;
  score : int;
  name : string; 
}

let init_player p_id = {
  id = p_id;
  tiles = TileStack.empty;
  score = 0;
  name = " " 
}

let player_id (player: t) : int = player.id

let return_player (players: t list) (id: int) : t = List.find (fun p -> (player_id p = id)) players

let remove_tile (player: t) (tile: Tile.t) : t = {
  id = player.id; 
  tiles = TileStack.remove tile player.tiles; 
  score = player.score; 
  name = player.name
}

let add_tile (player : t) (tile : Tile.t) : t = {
    id = player.id;
    tiles = TileStack.push tile player.tiles;
    score = player.score;
    name = player.name
}

let get_tiles player = player.tiles 

let player_to_string (player: t) : string = "\n\nPlayer ID: " ^ string_of_int (player.id) ^ "\nPlayer Name: " ^ player.name ^"\nTiles: " ^ TileStack.tileStack_to_string (player.tiles)

let rec players_to_string (players: t list) : string = 
  match players with
  | [] -> ""
  | h :: t -> player_to_string h ^ players_to_string t