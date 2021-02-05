require "json"

class Swagger::Path::Schema
  include JSON::Serializable

  property type : String? = nil

  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil
end
