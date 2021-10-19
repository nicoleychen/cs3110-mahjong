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
val tile_id : t -> tile_id
val category : t -> category
val value : t -> value

val same_category: t -> t -> bool
(** [same_category] is whether the tiles [tile1] and [tile] have the same category*)

val same_value: t -> t -> bool
(** [same_pattern] is whether the tiles [tile1] and [tile] have the same value*)

val same_pattern: t -> t -> bool
(** [same_pattern] is whether the tiles [tile1] and [tile] have the same pattern (category and value)*)

val is_flower: t -> bool
(** [is_flower] is whether the tile [tile] has the category of Flowers*)