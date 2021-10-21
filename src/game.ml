open Player 
open Tile 
open TileStack 


type t = {
    banker : Player.t  
    Center_Tiles : TileStack 
    Open_Tiles : TileStack
    Discard_Tile : List 
    Players : Player.t list   
}