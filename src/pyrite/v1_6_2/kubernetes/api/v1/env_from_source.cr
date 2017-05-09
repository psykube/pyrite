# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # EnvFromSource represents the source of a set of ConfigMaps
  class Definitions::Kubernetes::Api::V1::EnvFromSource
    # The ConfigMap to select from
    property config_map_ref : Kubernetes::Api::V1::ConfigMapEnvSource

    # An optional identifer to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    property prefix : String?

    # The Secret to select from
    property secret_ref : Kubernetes::Api::V1::SecretEnvSource

    YAML.mapping({config_map_ref: {type: Kubernetes::Api::V1::ConfigMapEnvSource, nilable: true, key: configMapRef, getter: false, setter: false},
                  prefix:         {type: String, nilable: true, key: prefix, getter: false, setter: false},
                  secret_ref:     {type: Kubernetes::Api::V1::SecretEnvSource, nilable: true, key: secretRef, getter: false, setter: false}}, true)

    JSON.mapping({config_map_ref: {type: Kubernetes::Api::V1::ConfigMapEnvSource, nilable: true, key: configMapRef, getter: false, setter: false},
                  prefix:         {type: String, nilable: true, key: prefix, getter: false, setter: false},
                  secret_ref:     {type: Kubernetes::Api::V1::SecretEnvSource, nilable: true, key: secretRef, getter: false, setter: false}}, true)

    def initialize(@config_map_ref : Kubernetes::Api::V1::ConfigMapEnvSource = nil, @prefix : String? = nil, @secret_ref : Kubernetes::Api::V1::SecretEnvSource = nil)
    end
  end
end