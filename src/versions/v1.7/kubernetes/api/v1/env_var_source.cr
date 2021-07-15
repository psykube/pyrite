# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EnvVarSource represents a source for the value of an EnvVar.
  class Kubernetes::Api::V1::EnvVarSource < Kubernetes::Spec
    # Selects a key of a ConfigMap.
    @[::JSON::Field(key: "configMapKeyRef")]
    @[::YAML::Field(key: "configMapKeyRef")]
    property config_map_key_ref : Kubernetes::Api::V1::ConfigMapKeySelector | Nil

    # Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP.
    @[::JSON::Field(key: "fieldRef")]
    @[::YAML::Field(key: "fieldRef")]
    property field_ref : Kubernetes::Api::V1::ObjectFieldSelector | Nil

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
    @[::JSON::Field(key: "resourceFieldRef")]
    @[::YAML::Field(key: "resourceFieldRef")]
    property resource_field_ref : Kubernetes::Api::V1::ResourceFieldSelector | Nil

    # Selects a key of a secret in the pod's namespace
    @[::JSON::Field(key: "secretKeyRef")]
    @[::YAML::Field(key: "secretKeyRef")]
    property secret_key_ref : Kubernetes::Api::V1::SecretKeySelector | Nil

    def initialize(*, @config_map_key_ref : Kubernetes::Api::V1::ConfigMapKeySelector | Nil = nil, @field_ref : Kubernetes::Api::V1::ObjectFieldSelector | Nil = nil, @resource_field_ref : Kubernetes::Api::V1::ResourceFieldSelector | Nil = nil, @secret_key_ref : Kubernetes::Api::V1::SecretKeySelector | Nil = nil)
    end
  end
end
