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
let init_tiles = TileStack.empty in
for i = 143 downto 0 do 
  init_tiles.push return_tile i
done;

let rec print_init_tiles tiles = 
  match tiles with
  | [] -> print_endline "DONE"
  | h :: t -> Tile.print_tile h ^ print_init_tiles t

