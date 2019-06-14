# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
  class Api::Core::V1::NodeConfigSource
    # ConfigMap is a reference to a Node's ConfigMap
    property config_map : Api::Core::V1::ConfigMapNodeConfigSource | Nil

    ::YAML.mapping({
      config_map: {type: Api::Core::V1::ConfigMapNodeConfigSource, nilable: true, key: "configMap", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      config_map: {type: Api::Core::V1::ConfigMapNodeConfigSource, nilable: true, key: "configMap", getter: false, setter: false},
    }, true)

    def initialize(*, @config_map : Api::Core::V1::ConfigMapNodeConfigSource | Nil = nil)
    end
  end
end
