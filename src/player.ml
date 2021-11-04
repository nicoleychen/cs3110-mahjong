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

