type t
(** the abstract type of values representing tiles*)

type pattern
(** the abstract type of values representig patterns of tiles*)

type tile_id = int
(** the type of tile identifiers*)

type category = string
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

val category : t -> category
(** [category] is the category of the pattern of the tile [tile]*)

val value : t -> value
(** [value] is the value of the pattern of the tile [tile]*)

val same_category: t -> t -> bool
(** [same_category] is whether the tiles [tile1] and [tile] have the same category*)

val same_value: t -> t -> bool
(** [same_pattern] is whether the tiles [tile1] and [tile] have the same value*)

val same_pattern: t -> t -> bool
(** [same_pattern] is whether the tiles [tile1] and [tile] have the same pattern (category and value)*)

val is_flower: t -> bool
(** [is_flower] is whether the tile [tile] has the category of Flowers*)

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