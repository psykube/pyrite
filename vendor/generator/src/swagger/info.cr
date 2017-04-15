require "json"

class Swagger::Info
  JSON.mapping({
    title:   String,
    version: String,
  })
end
