pub use ofdb_boundary::*;

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct BBox {
    pub north_east: Coordinate,
    pub south_west: Coordinate,
}
