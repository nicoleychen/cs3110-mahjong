open Demo
open Tile
open TileStack
open Player
open Game


let setup_game () = print_endline "Welcome to the game!"; Game.print_game (Game.set_up_game 1)

let main () =
  ANSITerminal.print_string [ ANSITerminal.red ]
    "\n\nWelcome to the 3110 Mahjong Game. 
    This game requires four players, and will take around half an hour to complete.";
    print_endline "Would you like to begin? (Y/N)\n";
    print_string "> ";
  match read_line () with
  | exception End_of_file -> ()
  | answer -> if (answer = "Y") then setup_game () else print_endline "Okay, see you later!"

(* Execute the game engine. *)
(* let () = print_endline "hi" *)
let () = main ()
