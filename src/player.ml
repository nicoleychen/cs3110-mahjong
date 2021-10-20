type t = {
  id : int;
  banker : bool;
  tiles : Tile.t list;
  score : int;
}

let init_player p_id = {
  id = p_id
  banker = false
  tiles = []
  score = 0
}

let add_tile player tile = {
    id = player.id
    banker = player.is_banker
    tiles = tile :: player.tiles
    score = player.score
  }


let is_banker player = player.banker

let rec get_tiles player = player.tiles

