# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node.
  class Api::Core::V1::ConfigMapNodeConfigSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
    @[::JSON::Field(key: "kubeletConfigKey")]
    @[::YAML::Field(key: "kubeletConfigKey")]
    property kubelet_config_key : String

    # Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String

    # ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    @[::JSON::Field(key: "resourceVersion")]
    @[::YAML::Field(key: "resourceVersion")]
    property resource_version : String | Nil

    # UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    @[::JSON::Field(key: "uid")]
    @[::YAML::Field(key: "uid")]
    property uid : String | Nil

    def initialize(*, @kubelet_config_key : String, @name : String, @namespace : String, @resource_version : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
