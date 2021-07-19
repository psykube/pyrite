require "json"

class Swagger::Path
  include JSON::Serializable

  property get : Action?
  property post : Action?
  property delete : Action?
  property patch : Action?
  property put : Action?
  property head : Action?
  property options : Action?
  property parameters : Array(Parameter) = [] of Swagger::Path::Parameter

  def actions
    action_map.values.map(&.[0]).reject(Nil).map(&.as Action)
  end

  def action_map
    {
      options: {options, false},
      head:    {head, false},
      post:    {post, true},
      get:     {get, false},
      put:     {put, true},
      patch:   {patch, true},
      delete:  {delete, false},
    }
  end
end

require "./path/*"
