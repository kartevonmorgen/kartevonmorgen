pub use ofdb_boundary::*;
use serde::Deserialize;

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct BBox {
    pub north_east: Coordinate,
    pub south_west: Coordinate,
}

#[derive(Debug, Clone, Deserialize)]
pub struct City {
    pub display_name: String,
    pub address: Address,
    pub class: String,
    pub r#type: String,
    pub lat: Option<String>,
    pub lon: Option<String>,
    pub boundingbox: Option<Vec<String>>,
}

#[derive(Debug, Clone, PartialEq, Deserialize)]
pub struct Address {
    pub city: Option<String>,
    pub town: Option<String>,
    pub country: String,
    pub postcode: Option<String>,
    pub village: Option<String>,
}
