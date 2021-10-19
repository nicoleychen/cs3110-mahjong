(*Reference: https://www.ymimports.com/pages/how-to-play-american-mahjong*)

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
