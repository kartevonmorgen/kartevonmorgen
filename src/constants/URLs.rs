use crate::constants::App;
pub const API_VERSION: &str = "v0";
pub fn OFDB_API_LINK(stage: &App::APP_STAGES) -> String {
    let url = match stage {
        App::APP_STAGES::LOCAL => "/api/",
        App::APP_STAGES::NIGHTLY => "https://nightly.ofdb.io/",
        App::APP_STAGES::PRODUCTION => "https://api.ofdb.io/",
    };
    format!("{}{}", url, API_VERSION)
}
pub mod CC_LICENSE {
    pub const name: &str = "creativecommons.org/publicdomain/zero/1.0/deed.de";
    pub const link: &str = "https://creativecommons.org/publicdomain/zero/1.0/deed.de";
}
pub mod ODBL_LICENSE {
    pub const name: &str = "opendatacommons.org/licenses/odbl/summary/";
    pub const link: &str = "https://opendatacommons.org/licenses/odbl/summary/";
}
pub mod APP {
    pub const name: &str = "kartevonmorgen.org";
    pub const link: &str = "https://kartevonmorgen.org";
}
pub mod PROTOTYPE {
    pub const name: &str = "prototyp.kartevonmorgen.org";
    pub const link: &str = "https://prototyp.kartevonmorgen.org";
}
pub mod REPOSITORY {
    pub const name: &str = "github.com/flosse/kartevonmorgen";
    pub const link: &str = "https://github.com/flosse/kartevonmorgen";
}
pub mod FACEBOOK {
    pub const name: &str = "facebook.com/vonmorgen";
    pub const link: &str = "https://www.facebook.com/vonmorgen";
}
pub mod MAIL {
    pub const name: &str = "info@kartevonmorgen.org";
    pub const link: &str = "mailto:info@kartevonmorgen.org";
}
pub mod OSM_ATTR {
    pub const name: &str = "OpenStreetMap";
    pub const link: &str = "https://osm.org/copyright";
}
pub mod TILE_SERVER {
    pub const link: &str = "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}{r}.png";
}
pub mod TILE_SERVER_ATTR {
    pub const name: &str = "Wikimedia";
    pub const link: &str = "https://wikimediafoundation.org/wiki/Maps_Terms_of_Use";
}
pub use self::OFDB_API_LINK as OFDB_API;
pub mod TH_GEOCODER {
    pub const link: &str = "https://geocoder.tilehosting.com/q/<query>.js?key=<key>";
}
pub mod NOMINATIM {
    pub const link: &str = "https://nominatim.openstreetmap.org";
}
pub mod ROUTEPLANNERS {
    pub mod default {
        pub const name: &str = "Graphhopper Maps";
        pub const link : &str = "https://graphhopper.com/maps/?point=&point={addr}&locale=de-DE&vehicle=bike&weighting=fastest&elevation=false&use_miles=false&layer=Omniscale";
    }
    pub mod apple {
        pub const name: &str = "Apple Maps";
        pub const link: &str = "http://maps.apple.com/?daddr={addr}&dirflg=w";
    }
    pub mod android {
        pub const name: &str = "GeoURI";
        pub const link: &str = "geo:{lat},{lng}";
    }
}
pub mod DONATE {
    pub const name: &str = "www.betterplace.org/de/projects/36213";
    pub const link: &str = "https://www.betterplace.org/de/projects/36213";
}
pub mod JOB_ADS {
    pub const name: &str = "www.betterplace.org/de/organisations/vonmorgen";
    pub const link: &str = "https://www.betterplace.org/de/organisations/vonmorgen";
}
