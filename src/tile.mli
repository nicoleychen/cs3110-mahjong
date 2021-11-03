type t
(** the abstract type of values representing tiles*)

type pattern
(** the abstract type of values representing patterns of tiles*)

type tile_id = int
(** the type of tile identifiers*)

type suit = string
(** the type of tile's pattern categories*)

type value = int
(** the type of tile's pattern values
Winds: 1=East, 2=South, 3=West, 4=North
Dragons: 1=White, 2=Green, 3=Red
Seasons: 1=Spring, 2=Summer, 3=Autumn, 4=Winter*)

val pattern : t -> pattern
(** [pattern] is the pattern of the tile [tile]*)

val tile_id : t -> tile_id
(** [tile_id] is the tile id of the tile [tile]*)

val suit : t -> suit
(** [suit] is the suit of the pattern of the tile [tile]*)

val value : t -> value
(** [value] is the value of the pattern of the tile [tile]*)

val same_suit: t -> t -> bool
(** [same_suit] is whether the tiles [tile1] and [tile2] have the same suit*)

val same_suit_triple: t -> t -> t -> bool
(** [same_suit] is whether the tiles [tile1] and [tile2] and [tile3] have the same suit*)

val same_value: t -> t -> bool
(** [same_pattern] is whether the tiles [tile1] and [tile2] have the same value*)

val same_pattern: t -> t -> bool
(** [same_pattern] is whether the tiles [tile1] and [tile2] have the same pattern (suit and value)*)

val same_consecutive: t -> t -> bool
(** [same_consecutive] is whether the tiles [tile1] and [tile2] are consecutive or not*)

val is_flower: t -> bool
(** [is_flower] is whether the tile [tile] has the suit of Flowers*)

val tile_to_string: t -> string
(** [tile_to_string] is a string that contains the id and the pattern of [tile]*)

val tiles_to_string: t list -> string
(** [tiles_to_string] is a string that cotains a list of ids and patterns of [tiles]*)

val print_tile: t -> unit
(** [print_tile] prints the id and the pattern of [tile]*)

val print_tiles: t list -> unit
(** [print_tiles] prints a list of ids and patterns of [tiles]*)

val return_pattern: tile_id -> pattern

val return_tile: tile_id -> t