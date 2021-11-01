open TileStack
open Tile 

type t = {
  id : int;
  tiles : TileStack.t;
  score : int;
}

let init_player p_id = {
  id = p_id;
  tiles = TileStack.empty;
  score = 0
}

let add_tile (player : t) (tile : Tile.t) : t = {
    id = player.id;
    tiles = TileStack.push tile player.tiles;
    score = player.score
}

let get_tiles player = player.tiles 

