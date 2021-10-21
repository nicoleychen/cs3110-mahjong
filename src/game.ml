open Player 
open Tile 
open TileStack 

type t = {
    banker : Player.t  
    Center_Tiles : TileStack 
    Open_Tiles : TileStack
    Discard_Tile : List 
    Players : Player.t list   
}

let rec assign_banker players n = {
  match players with
  | h::t -> if h.id == n then h.id == True else assign_banker t n
}
 
let assign_tiles player center = {
  let lst = [] in
  match player with
  | h::t
}
 
let rec filter tilelst = function
| [] -> []
| h :: t -> if is_flower tile = false then h :: is_flower t else is_flower t
 
let check_bankertile player tile = if player.is_banker && tiles.length <= 12 then add_tile player tile
