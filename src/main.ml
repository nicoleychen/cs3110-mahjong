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


let init_tiles : TileStack [] in 
for i = 143 to 0 do 
  init_tiles := init_tiles.push return_tile i
done;

