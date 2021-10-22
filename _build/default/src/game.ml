open Player 
open Tile 
open TileStack 
open Random
open List  

type t = {
    banker : Player.t;  
    center_tiles : TileStack.t; 
    open_tiles : TileStack.t;
    discarded_tiles : TileStack.t; 
    players : Player.t list;   
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
| h :: t -> if is_flower h = false then h :: is_flower t else is_flower t
 
let check_bankertile player tile = if player.is_banker && tiles.length <= 12 then add_tile player tile

let shuffle_tiles tile_stack = 
  assert TileStack.is_empty = false 
  let assign_random_tags = List.map (fun c -> (Random.bits(), c)) tile_stack in 
  let sorted = List.sort compare nd in 
  List.map assign_random_tags sorted 
