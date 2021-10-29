open Tile
open TileStack
open Player
open Game

let return_pattern (i:int) : Tile.pattern = 
  match i with
  | i when i >= 0 && i <=35 -> Dots ((i / 4) + 1)
  | i when i >= 36 && i <= 71 -> Bamboos ((i-36)/4 + 1)
  | i when i >= 72 && i <= 108 -> Characters ((i-72)/4 + 1) 
  | i when i >= 109 && i <= 124 -> Winds ((i-109)/4 +1)
  | i when i >= 125 && i <= 136 -> Dragons ((i-124)/4 +1)
  | i when i >= 137 && i <= 140 -> Flowers (i-136)
  | i when i >= 141 && i <= 144 -> Seasons (i-140)
  | _ -> Dots 0

let return_tile (i:int) : Tile.t = {
  id = int; 
  pattern = return_pattern i
}

(** n should be 143 
let rec init_tiles (n:int) : TileStack.t =
  if (n>=0) then return_tile i |> (init_tiles n-1).push else TileStack.empty
*)

let rec print_init_tiles tiles = 
  match tiles with
  | [] -> print_endline "DONE"
  | h :: t -> Tile.print_tile h ^ print_init_tiles t

