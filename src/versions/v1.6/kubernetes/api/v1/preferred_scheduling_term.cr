# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
  class Kubernetes::Api::V1::PreferredSchedulingTerm
    # A node selector term, associated with the corresponding weight.
    property preference : Kubernetes::Api::V1::NodeSelectorTerm

    # Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
    property weight : Int32

    ::YAML.mapping({
      preference: {type: Kubernetes::Api::V1::NodeSelectorTerm, nilable: false, key: "preference", getter: false, setter: false},
      weight:     {type: Int32, nilable: false, key: "weight", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      preference: {type: Kubernetes::Api::V1::NodeSelectorTerm, nilable: false, key: "preference", getter: false, setter: false},
      weight:     {type: Int32, nilable: false, key: "weight", getter: false, setter: false},
    }, true)

    def initialize(*, @preference : Kubernetes::Api::V1::NodeSelectorTerm, @weight : Int32)
    end
  end
end
