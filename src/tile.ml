(* Reference: https://www.ymimports.com/pages/how-to-play-american-mahjong *)

(*
Winds: 1=East, 2=South, 3=West, 4=North
Dragons: 1=White, 2=Green, 3=Red
Seasons: 1=Spring, 2=Summer, 3=Autumn, 4=Winter
*)

type tile_id = int
type suit = string
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

let suit tile =
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
  | Dragons i ->  i
  | Flowers i ->  i
  | Seasons i ->  i

let same_suit tile1 tile2 = (suit tile1) = (suit tile2)

let same_suit_triple tile1 tile2 tile3 = if same_suit tile1 tile2 then same_suit tile1 tile3 && same_suit tile2 tile3 else false

let same_value tile1 tile2 = (value tile1) = (value tile2)

let same_pattern tile1 tile2 = if same_suit tile1 tile2 then same_value tile1 tile2 else false

let same_consecutive tile1 tile2 = if same_suit tile1 tile2 then ((value tile1) + 1) = (value tile2) else false

let is_flower tile = (suit tile = "flowers")

let tile_to_string tile = " [" ^ string_of_int (tile_id tile) ^ "] " ^ suit tile ^ " " ^ string_of_int (value tile)

let rec tiles_to_string tiles = 
  match tiles with
  | [] -> ""
  | h :: t -> tile_to_string h ^ ", " ^ tiles_to_string t

let print_tile tile = print_endline (tile_to_string tile)

let print_tiles tiles = print_endline (tiles_to_string tiles)

let return_pattern (i:int) : pattern = 
  match i with
  | i when i >= 1 && i <=36 -> Dots ((i-1)/4 + 1)
  | i when i >= 37 && i <= 72 -> Bamboos ((i-37)/4 + 1)
  | i when i >= 73 && i <= 108 -> Characters ((i-73)/4 + 1) 
  | i when i >= 109 && i <= 124 -> Winds ((i-109)/4 +1)
  | i when i >= 125 && i <= 136 -> Dragons ((i-125)/4 +1)
  | i when i >= 137 && i <= 140 -> Flowers (i-136)
  | i when i >= 141 && i <= 144 -> Seasons (i-140)
  | _ -> Dots 0

let return_tile (i:int) : t = {
  id = i; 
  pattern = return_pattern i
}