# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
  class Api::Core::V1::NodeConfigSource < Kubernetes::Spec
    # ConfigMap is a reference to a Node's ConfigMap
    @[::JSON::Field(key: "configMap")]
    @[::YAML::Field(key: "configMap")]
    property config_map : Api::Core::V1::ConfigMapNodeConfigSource | Nil

    def initialize(*, @config_map : Api::Core::V1::ConfigMapNodeConfigSource | Nil = nil)
    end
  end
end
