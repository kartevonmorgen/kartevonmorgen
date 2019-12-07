pub use ofdb_boundary::*;

#[derive(Debug)]
pub struct BBox {
    pub north_east: Coordinate,
    pub south_west: Coordinate,
}
