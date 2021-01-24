module.exports = {
  EDIT: {
    id: "edit",
    fields: [
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
      "tags"
    ]
  },

  RATING: {
    id: "rating",
    fields: [
      "context",
      "value",
      "comment"
    ]
  },

  COMMENT: {
    id: "comment",
    fields: [
      "context",
      "value",
      "comment"
    ]
  },

  LOGIN: {
    id: "login",
    fields: [
      "email",
      "password"
    ]
  },

  REGISTER: {
    id: "register",
    fields: [
      "email",
      "password"
    ]
  }
};
