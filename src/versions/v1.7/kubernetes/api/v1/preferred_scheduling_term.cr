# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
  class Kubernetes::Api::V1::PreferredSchedulingTerm
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A node selector term, associated with the corresponding weight.
    @[JSON::Field(key: "preference")]
    @[YAML::Field(key: "preference")]
    property preference : Kubernetes::Api::V1::NodeSelectorTerm

    # Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
    @[JSON::Field(key: "weight")]
    @[YAML::Field(key: "weight")]
    property weight : Int32

    def initialize(*, @preference : Kubernetes::Api::V1::NodeSelectorTerm, @weight : Int32)
    end
  end
end
