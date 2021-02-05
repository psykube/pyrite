require "json"
require "./schema"

class Swagger::Path::Parameter
  include JSON::Serializable

  property name : String
  property in : String? = nil
  property description : String? = nil
  property uniqueItems : Bool? = nil
  property required : Bool = false
  property type : String? = nil
  property schema : Schema? = nil

  def initialize(@name : String, @type = "string", @required = true)
  end
end
