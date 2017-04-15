require "json"

class Swagger::Path::Schema
  JSON.mapping({
    type: String?,
    _ref: {type: String, nilable: true, key: "$ref"},
  }, true)
end
