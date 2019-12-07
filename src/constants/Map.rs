pub const DEFAULT_ZOOM: usize = 7;
pub const CITY_DEFAULT_ZOOM: usize = 13;
pub const ENTRY_DEFAULT_ZOOM: usize = 15;
pub mod DEFAULT_CENTER {
    pub const lat: f64 = 50.826;
    pub const lng: f64 = 10.920;
}
pub mod DEFAULT_BBOX {
    pub mod _northEast {
        pub const lat: f64 = 48.82099347817258;
        pub const lng: f64 = 9.299583435058596;
    }
    pub mod _southWest {
        pub const lat: f64 = 48.73547433443503;
        pub const lng: f64 = 9.116249084472658;
    }
}
pub const NUM_DECIMALS_FOR_ZOOM: usize = 2;
pub const NUM_DECIMALS_FOR_COORDINATES: usize = 3;
