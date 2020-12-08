require "json"

class Swagger::Definition::Property
  JSON.mapping({
    type:        String?,
    description: String?,
    items:       Property?,
    _ref:        {type: String, nilable: true, key: "$ref"},
  })

  def initialize(*, @type : String? = nil, @description : String? = nil, @items : Property? = nil, @_ref : String? = nil)
  end
end
