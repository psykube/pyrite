require "json"

class Swagger::Definition::GroupVersionKind
  include JSON::Serializable

  getter group : String?
  getter version : String?
  getter kind : String?

  def initialize(*, @group : String, @version : String, @kind : String)
  end
end
