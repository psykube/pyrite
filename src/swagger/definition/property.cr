require "json"

class Swagger::Definition::Property
  include JSON::Serializable

  property type : String? = nil
  property description : String? = nil
  property items : Property? = nil

  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil

  def initialize(*, @type : String? = nil, @description : String? = nil, @items : Property? = nil, @_ref : String? = nil)
  end
end
