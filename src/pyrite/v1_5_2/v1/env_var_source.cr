# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # EnvVarSource represents a source for the value of an EnvVar.
  class Definitions::V1::EnvVarSource
    # Selects a key of a ConfigMap.
    property config_map_key_ref : V1::ConfigMapKeySelector

    # Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.podIP.
    property field_ref : V1::ObjectFieldSelector

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
    property resource_field_ref : V1::ResourceFieldSelector

    # Selects a key of a secret in the pod's namespace
    property secret_key_ref : V1::SecretKeySelector

    YAML.mapping({config_map_key_ref: {type: V1::ConfigMapKeySelector, nilable: true, key: configMapKeyRef, getter: false, setter: false},
                  field_ref:          {type: V1::ObjectFieldSelector, nilable: true, key: fieldRef, getter: false, setter: false},
                  resource_field_ref: {type: V1::ResourceFieldSelector, nilable: true, key: resourceFieldRef, getter: false, setter: false},
                  secret_key_ref:     {type: V1::SecretKeySelector, nilable: true, key: secretKeyRef, getter: false, setter: false}}, true)

    JSON.mapping({config_map_key_ref: {type: V1::ConfigMapKeySelector, nilable: true, key: configMapKeyRef, getter: false, setter: false},
                  field_ref:          {type: V1::ObjectFieldSelector, nilable: true, key: fieldRef, getter: false, setter: false},
                  resource_field_ref: {type: V1::ResourceFieldSelector, nilable: true, key: resourceFieldRef, getter: false, setter: false},
                  secret_key_ref:     {type: V1::SecretKeySelector, nilable: true, key: secretKeyRef, getter: false, setter: false}}, true)

    def initialize(@config_map_key_ref : V1::ConfigMapKeySelector = nil, @field_ref : V1::ObjectFieldSelector = nil, @resource_field_ref : V1::ResourceFieldSelector = nil, @secret_key_ref : V1::SecretKeySelector = nil)
    end
  end
end
