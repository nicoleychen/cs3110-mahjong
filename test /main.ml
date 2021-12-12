(*Test Plan: *)

open OUnit2
open Demo
open Tile
open TileStack
open Player
open Game

(*TEST TILE MODULE*)
let tile1 = Tile.return_tile 1
let tile5 = Tile.return_tile 5
let tile44 = Tile.return_tile 44 
let tile73 = Tile.return_tile 73 
let tile77  = Tile.return_tile 77 
let tile109 = Tile.return_tile 109 
let tile124 = Tile.return_tile 124 
let tile137 = Tile.return_tile 137 
let tile144 = Tile.return_tile 144 

let tile_id_test name t exp = 
  name >:: fun _ -> 
    assert_equal exp (Tile.tile_id t) ~printer:string_of_int 

let pattern_tile name t exp = 
  name >:: fun _ -> 
    assert_equal exp (Tile.pattern t) 
   (*create a function to change pattern to string*)

(*let suit_test t (suit:string) = 
  name >:: fun _ -> 
    assert_equal suit (Tile.suit t) ~printer

let value_test t (value:string) = 
  name >:: fun _ -> 
    assert_equal value (Tile.value t)*)
  
    (*create a function that changes the value to string*) 

let same_suit_test name t1 t2 (result:bool) = 
  name >:: fun _ -> 
    assert_equal result (Tile.same_suit t1 t2) ~printer: string_of_bool 

let same_value_test name t1 t2 (result:bool) = 
  name >:: fun _ -> 
    assert_equal result (Tile.same_value t1 t2) ~printer: string_of_bool 

let is_flower_test name t (result:bool) = 
  name >:: fun _ -> 
    assert_equal result (Tile.is_flower t) ~printer: string_of_bool 

let return_pattern_test name t exp = 
  name >:: fun _ -> 
    assert_equal exp (Tile.return_pattern t) 











