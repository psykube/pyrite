# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleRef contains information that points to the role being used
  class Kubernetes::Apis::Rbac::V1beta1::RoleRef
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIGroup is the group for the resource being referenced
    @[JSON::Field(key: "apiGroup")]
    @[YAML::Field(key: "apiGroup")]
    property api_group : String

    # Kind is the type of resource being referenced
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String

    # Name is the name of resource being referenced
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    def initialize(*, @api_group : String, @kind : String, @name : String)
    end
  end
end
