type t
(** the abstract type of values representing tiles*)

type pattern
(** the abstract type of values representig patterns of tiles*)

type tile_id = int
(** the type of tile identifiers*)

type category = string
(** the type of tile's pattern categories*)

type value = int
(** the type of tile's pattern values*)

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

val print_tile: t -> unit
(** [print_tile] prints the pattern of the [tile] in string*)