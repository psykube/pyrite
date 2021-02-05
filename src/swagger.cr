require "json"

class Swagger
  include JSON::Serializable

  property info : Info
  property paths : Hash(String, Path)
  property definitions : Hash(String, Definition)
end

require "./swagger/*"
