require "json"
require "./parameter"

class Swagger::Path::Action
  include JSON::Serializable

  property description : String? = nil
  property consumes : Array(String)? = nil
  property produces : Array(String)? = nil
  property responses : Hash(String, Response)
  property parameters : Array(Parameter) = [] of Swagger::Path::Parameter

  @[JSON::Field(key: "operationId")]
  property operation_id : String
end

require "./action/*"
