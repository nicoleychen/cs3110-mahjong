import player 
import tile 
import tileStack 


type t = {
    banker : player.t  
    Center_Tiles : tileStack 
    Open_Tiles : tileStack
    Discard_Tile : List 
    Players : player.t list   
}