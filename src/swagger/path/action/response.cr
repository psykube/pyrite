require "json"
require "../schema"

class Swagger::Path::Action::Response
  JSON.mapping({
    description: String?,
    schema:      Schema?,
  })
end
