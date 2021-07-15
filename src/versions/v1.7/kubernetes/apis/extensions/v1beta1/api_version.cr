# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # An APIVersion represents a single concrete version of an object model.
  class Kubernetes::Apis::Extensions::V1beta1::APIVersion < Kubernetes::Spec
    # Name of this version (e.g. 'v1').
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    def initialize(*, @name : String | Nil = nil)
    end
  end
end
