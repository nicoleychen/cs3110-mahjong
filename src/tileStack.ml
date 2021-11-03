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
