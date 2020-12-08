require "json"

class Swagger
  JSON.mapping({
    info:        Info,
    paths:       Hash(String, Path),
    definitions: Hash(String, Definition),
  })
end

require "./swagger/*"
