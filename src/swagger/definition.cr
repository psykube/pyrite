require "json"

class Swagger::Definition
  include JSON::Serializable

  property description : String?
  property required : Array(String) = [] of String
  property properties : Hash(String, Property) = {} of String => Swagger::Definition::Property

  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil

  def initialize
  end
end

require "./definition/*"
