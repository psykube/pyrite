require "json"
require "./parameter"

class Swagger::Path::Action
  JSON.mapping({
    description: String?,
    consumes:    Array(String)?,
    produces:    Array(String)?,
    operationId: String,
    responses:   Hash(String, Response),
    parameters:  {type: Array(Parameter), default: [] of Parameter},
  })
end

require "./action/*"
