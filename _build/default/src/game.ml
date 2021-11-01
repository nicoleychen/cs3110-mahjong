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

(*need functions to initialize a game - assinging a banker, generating 144 tiles & putting thme into center_tiles & initiating players*)
let init_game (banker: int)= {
  banker = banker;
  center_tiles = ;
  discarded_tiles = TileStack.empty;
  players: ;
}
 
let rec filter = function
| [] -> []
| h :: t -> if is_flower h then filter t else h :: filter t 

let shuffle_tiles tile_stack = 
  (*assert TileStack.is_empty  = false*)
  let assign_random_tags = List.map (fun c -> (Random.bits(), c)) tile_stack in 
  let sorted = List.sort compare nd in 
  List.map assign_random_tags sorted 
