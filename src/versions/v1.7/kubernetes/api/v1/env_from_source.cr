# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EnvFromSource represents the source of a set of ConfigMaps
  class Kubernetes::Api::V1::EnvFromSource < Kubernetes::Spec
    # The ConfigMap to select from
    @[::JSON::Field(key: "configMapRef")]
    @[::YAML::Field(key: "configMapRef")]
    property config_map_ref : Kubernetes::Api::V1::ConfigMapEnvSource | Nil

    # An optional identifer to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    @[::JSON::Field(key: "prefix")]
    @[::YAML::Field(key: "prefix")]
    property prefix : String | Nil

    # The Secret to select from
    @[::JSON::Field(key: "secretRef")]
    @[::YAML::Field(key: "secretRef")]
    property secret_ref : Kubernetes::Api::V1::SecretEnvSource | Nil

    def initialize(*, @config_map_ref : Kubernetes::Api::V1::ConfigMapEnvSource | Nil = nil, @prefix : String | Nil = nil, @secret_ref : Kubernetes::Api::V1::SecretEnvSource | Nil = nil)
    end
  end
end
