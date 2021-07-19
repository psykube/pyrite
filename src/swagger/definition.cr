require "json"

class Swagger::Definition
  include JSON::Serializable

  property description : String?
  property required : Array(String) = [] of String
  property properties : Hash(String, Property) = {} of String => Swagger::Definition::Property

  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil

  @[JSON::Field(key: "x-kubernetes-group-version-kind")]
  getter group_version_kinds : Array(GroupVersionKind) = [] of GroupVersionKind

  def initialize
  end

  def group_version_kind
    group_version_kinds.first?
  end
end

require "./definition/*"
