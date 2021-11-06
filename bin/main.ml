open Demo
open Tile
open TileStack
open Player
open Game

let game = ref (Game.set_up_game 1)

let print_player_tiles (p_id: int) =
  print_endline "\nHere are your current tiles: ";
  Player.return_player (Game.players !game) p_id |> Player.get_tiles |> TileStack.tileStack_to_string |> print_string

let draw_or_steal (p_id: int)=
  let player = (Player.return_player (Game.players !game) p_id) in
  print_endline "\n\nWould you like to (1) draw a tile from the center tile rows or (2) steal a tile from the discarded tiles? (1/2) ";
  print_string "> ";
  match read_line () with
  | exception End_of_file -> ()
  | answer -> if (answer = "1") then game := pick_tile !game player else game := steal_tile !game player

let rec discard (p_id: int) = 
  let player = (Player.return_player (Game.players !game) p_id) in
  print_endline "\n\nWhich tile would you like to discard? ";
  print_string "> ";
  match read_line () with
  | exception End_of_file -> ()
  | answer -> if (TileStack.is_in_tileStack (Player.get_tiles player) (int_of_string answer)) 
    then game :=  Game.discard_tile !game player (Tile.return_tile (int_of_string answer)) 
    else (print_string "You don't own this tile. Try again!"; discard (p_id))
  
let rec make_move (p_id: int) =
  ANSITerminal.print_string [ ANSITerminal.red ] ("\n\nPlayer " ^ string_of_int p_id ^ "'s turn!");
  print_string ("\nDiscarded Tiles: " ^ TileStack.tileStack_to_string (Game.discarded_tiles !game) ^ "\n");
  print_player_tiles (p_id);
  draw_or_steal (p_id);
  print_player_tiles (p_id);
  discard (p_id);
  print_player_tiles (p_id);
  make_move( if p_id =4 then 1 else p_id +1)

let setup_game () = 
  print_endline "Welcome to the game!"; 
  Game.print_game (!game);
  make_move 1

let main () =
  ANSITerminal.print_string [ ANSITerminal.red ]
    "\n\nWelcome to the 3110 Mahjong Game.\nThis game requires four players, and will take around half an hour to complete.";
    print_endline "\n\nWould you like to begin? (Y/N)";
    print_string "> ";
  match read_line () with
  | exception End_of_file -> ()
  | answer -> if (answer = "Y") then setup_game() else print_endline "Okay, see you later!"

(* Execute the game engine. *)
(* let () = print_endline "hi" *)
let () = main ()