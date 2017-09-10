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
    action_map.values.reject(&.nil?).map(&.as Action)
  end

  def action_map
    {
      options: options,
      head:    head,
      post:    post,
      get:     get,
      put:     put,
      path:    patch,
      delete:  delete,
    }
  end
end

require "./path/*"
