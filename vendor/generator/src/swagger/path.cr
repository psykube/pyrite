require "json"

class Swagger::Path
  JSON.mapping({
    get:        Action?,
    post:       Action?,
    delete:     Action?,
    patch:      Action?,
    put:        Action?,
    head:       Action?,
    options:    Action?,
    parameters: {type: Array(Parameter), default: [] of Parameter},
  })

  def actions
    [get, post, delete, patch, put, head, options].compact
  end
end

require "./path/*"
