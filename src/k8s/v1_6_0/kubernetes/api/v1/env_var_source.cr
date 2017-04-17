# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# EnvVarSource represents a source for the value of an EnvVar.
class K8S::V1_6_0::Kubernetes::Api::V1::EnvVarSource
  # Selects a key of a ConfigMap.
  property config_map_key_ref : ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapKeySelector

  # Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.podIP.
  property field_ref : ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectFieldSelector

  # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  property resource_field_ref : ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceFieldSelector

  # Selects a key of a secret in the pod's namespace
  property secret_key_ref : ::K8S::V1_6_0::Kubernetes::Api::V1::SecretKeySelector

  YAML.mapping({config_map_key_ref: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapKeySelector, nilable: true, key: configMapKeyRef, getter: false, setter: false},
                field_ref:          {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectFieldSelector, nilable: true, key: fieldRef, getter: false, setter: false},
                resource_field_ref: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceFieldSelector, nilable: true, key: resourceFieldRef, getter: false, setter: false},
                secret_key_ref:     {type: ::K8S::V1_6_0::Kubernetes::Api::V1::SecretKeySelector, nilable: true, key: secretKeyRef, getter: false, setter: false}}, true)

  JSON.mapping({config_map_key_ref: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapKeySelector, nilable: true, key: configMapKeyRef, getter: false, setter: false},
                field_ref:          {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectFieldSelector, nilable: true, key: fieldRef, getter: false, setter: false},
                resource_field_ref: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceFieldSelector, nilable: true, key: resourceFieldRef, getter: false, setter: false},
                secret_key_ref:     {type: ::K8S::V1_6_0::Kubernetes::Api::V1::SecretKeySelector, nilable: true, key: secretKeyRef, getter: false, setter: false}}, true)

  def initialize(@config_map_key_ref = nil, @field_ref = nil, @resource_field_ref = nil, @secret_key_ref = nil)
  end
end
