# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class Api::Auditregistration::V1alpha1::ServiceReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `name` is the name of the service. Required
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # `namespace` is the namespace of the service. Required
    @[JSON::Field(key: "namespace")]
    @[YAML::Field(key: "namespace")]
    property namespace : String

    # `path` is an optional URL path which will be sent in any request to this service.
    @[JSON::Field(key: "path")]
    @[YAML::Field(key: "path")]
    property path : String | Nil

    def initialize(*, @name : String, @namespace : String, @path : String | Nil = nil)
    end
  end
end
