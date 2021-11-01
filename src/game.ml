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

(*add specifications for init functions*)
let rec init_tiles (n: int) : TileStack.t = if (n > 0) then TileStack.push (Tile.return_tile n) (init_tiles (n-1)) else TileStack.empty 

let rec init_players (n: int) : Player.t list = if (n<=4) then (Player.init_player n) :: init_players (n+1) else []

let init_game (banker: int)= {
  banker = banker;
  center_tiles = init_tiles 144;
  discarded_tiles = TileStack.empty;
  players = init_players 0
}

let rec filter = function
| [] -> []
| h :: t -> if is_flower h then filter t else h :: filter t 

let shuffle_tiles tile_stack = 
  (*assert TileStack.is_empty  = false*)
  let assign_random_tags = List.map (fun c -> (Random.bits(), c)) tile_stack in 
  let sorted = List.sort compare nd in 
  List.map assign_random_tags sorted 
