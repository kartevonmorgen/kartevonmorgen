use std::str::FromStr;

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum IDS {
    INITIATIVE,
    EVENT,
    COMPANY,
}

impl IDS {
    pub fn as_str(&self) -> &str {
        match self {
            Self::INITIATIVE => "2cd00bebec0c48ba9db761da48678134",
            Self::EVENT => "c2dc278a2d6a4b9b8a50cb606fc017ed",
            Self::COMPANY => "77b3c33a92554bcf8e8c2c86cedd6f6f",
        }
    }
    // TODO: remove entirely
    pub fn NAMES(&self) -> &str {
        match self {
            Self::INITIATIVE => "initiative",
            Self::EVENT => "event",
            Self::COMPANY => "company",
        }
    }
    // TODO: remove entirely
    pub fn CSS_CLASS_SIZE(&self) -> &str {
        match self {
            Self::INITIATIVE => "pure-u-8-24",
            Self::EVENT => "pure-u-7-24",
            Self::COMPANY => "pure-u-9-24",
        }
    }
}

impl FromStr for IDS {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "2cd00bebec0c48ba9db761da48678134" => Ok(Self::INITIATIVE),
            "c2dc278a2d6a4b9b8a50cb606fc017ed" => Ok(Self::EVENT),
            "77b3c33a92554bcf8e8c2c86cedd6f6f" => Ok(Self::COMPANY),
            _ => Err(()),
        }
    }
}

pub const MAIN_IDS: [IDS; 3] = [IDS::INITIATIVE, IDS::EVENT, IDS::COMPANY];
