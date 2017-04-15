require "json"

class Swagger::Definition
  JSON.mapping({
    description: String?,
    required:    {type: Array(String), default: [] of String},
    properties:  {type: Hash(String, Property), default: {} of String => Property},
  })
end

require "./definition/*"
