require "json"
require "./schema"

class Swagger::Path::Parameter
  JSON.mapping({
    name:        String,
    in:          String?,
    description: String?,
    uniqueItems: Bool?,
    required:    {type: Bool, default: false},
    type:        String?,
    schema:      Schema?,
  }, true)

  def initialize(@name : String, @type = "string", @required = true)
  end
end
