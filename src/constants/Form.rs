pub mod EDIT {
    pub const id: &str = "edit";
    pub const fields: [&str; 13] = [
        "title",
        "description",
        "homepage",
        "telephone",
        "city",
        "zip",
        "email",
        "street",
        "lat",
        "lng",
        "category",
        "license",
        "tags",
    ];
}

pub mod RATING {
    pub const id: &str = "rating";
    pub const fields: [&str; 3] = ["context", "value", "comment"];
}

pub mod LOGIN {
    pub const id: &str = "login";
    pub const fields: [&str; 2] = ["email", "password"];
}

pub mod REGISTER {
    pub const id: &str = "register";
    pub const fields: [&str; 2] = ["email", "password"];
}
