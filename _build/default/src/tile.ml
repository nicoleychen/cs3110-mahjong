(* Reference: https://www.ymimports.com/pages/how-to-play-american-mahjong *)

(*
Winds: 1=East, 2=South, 3=West, 4=North
Dragons: 1=White, 2=Green, 3=Red
Seasons: 1=Spring, 2=Summer, 3=Autumn, 4=Winter
*)
type tile_id = int
type category = string
type value = int

type pattern =
| Dots of int
| Bamboos of int
| Characters of int
| Winds of int
| Dragons of int
| Flowers of int
| Seasons of int

type t = {
  id : int; 
  pattern: pattern;
}

let tile_id tile = tile.id
let pattern tile = tile.pattern

let category tile =
  match tile.pattern with
  | Dots _ -> "dots"
  | Bamboos _ -> "bamboos"
  | Characters _ -> "characters"
  | Winds _ -> "winds"
  | Dragons _ -> "dragons"
  | Flowers _ -> "flowers"
  | Seasons _ -> "seasons"

let value tile =
  match tile.pattern with
  | Dots i -> i
  | Bamboos i -> i
  | Characters i -> i
  | Winds i -> i
  | Dragons i -> i
  | Flowers i -> i
  | Seasons i -> i

let same_category tile1 tile2 = (category tile1) = (category tile2)

let same_value tile1 tile2 = (value tile1) = (value tile2)

let same_pattern tile1 tile2 = if same_category tile1 tile2 then same_value tile1 tile2 else false

let is_flower tile = (category tile = "flowers")

let tile_to_string tile =  category tile ^ " " ^ string_of_int (value tile)

let rec tiles_to_string tiles = 
  match tiles with
  | [] -> "DONE"
  | h :: t -> tile_to_string h ^ tiles_to_string t

let print_tile tile = print_endline (tile_to_string tile)

let print_tiles tiles = print_endline (tiles_to_string tiles)
let return_pattern (i:int) : pattern = 
  match i with
  | i when i >= 0 && i <=35 -> Dots ((i / 4) + 1)
  | i when i >= 36 && i <= 71 -> Bamboos ((i-36)/4 + 1)
  | i when i >= 72 && i <= 108 -> Characters ((i-72)/4 + 1) 
  | i when i >= 109 && i <= 124 -> Winds ((i-109)/4 +1)
  | i when i >= 125 && i <= 136 -> Dragons ((i-124)/4 +1)
  | i when i >= 137 && i <= 140 -> Flowers (i-136)
  | i when i >= 141 && i <= 144 -> Seasons (i-140)
  | _ -> Dots 0

let return_tile (i:int) : t = {
  id = i; 
  pattern = return_pattern i
}