open Tile
open TileStack
open Player
open Game

let return_tile (i:int) : Tile.t = 
  match i with
  |0 .. 35 -> Dots ((i / 4) + 1)
  |36 .. 71 -> Bamboos ((i-36)/4 + 1)
  |72 .. 108 -> Characters ((i-72)/4 + 1) 
  |109 .. 124 -> Winds ((i-109)/4 +1)
  |125 .. 136 -> Dragons ((i-124)/4 +1)
  |137 .. 140 -> Flowers (i-136)
  |141 .. 144 -> Seasons (i-140)

(** n should be 143 *)
let rec init_tiles (n:int) : TileStack =
  if (n>=0) then return_tile i |> (init_tiles n-1).push else TileStack.empty

let rec print_init_tiles tiles = 
  match tiles with
  | [] -> print_endline "DONE"
  | h :: t -> Tile.print_tile h ^ print_init_tiles t

