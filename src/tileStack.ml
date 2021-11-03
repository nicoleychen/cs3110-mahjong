open Tile 
open List 

type t = Tile.t list 

exception Empty 

let empty = [] 

let is_empty = function [] -> true | _ -> false 

let push = List.cons 

let peek = function [] -> raise Empty | x :: _ -> x

let pop = function [] -> raise Empty | _ :: s -> s 

let size = List.length

let rec remove tile = function
| [] -> []
| h :: t -> if (h = tile) then remove tile t else h :: remove tile t 

let rec tileStack_to_string = function 
| [] -> ""
| h::t -> Tile.tile_to_string h ^ tileStack_to_string t