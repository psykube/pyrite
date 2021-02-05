require "json"
require "../schema"

class Swagger::Path::Action::Response
  include JSON::Serializable
  property description : String?
  property schema : Schema?
end
