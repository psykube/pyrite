require "json"

class Swagger::Definition
  @required = [] of String
  @properties = {} of String => Property

  JSON.mapping({
    description: String?,
    required:    {type: Array(String), default: [] of String},
    properties:  {type: Hash(String, Property), default: {} of String => Property},
    _ref:        {type: String, nilable: true, key: "$ref"}
  })

  def initialize
  end
end

require "./definition/*"
