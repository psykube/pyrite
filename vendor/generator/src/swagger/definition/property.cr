require "json"

class Swagger::Definition::Property
  JSON.mapping({
    description: String?,
    type:        String?,
    items:       Property?,
    _ref:        {type: String, nilable: true, key: "$ref"},
  })
end
