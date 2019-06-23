# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node.
  class Api::Core::V1::ConfigMapNodeConfigSource
    # KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
    property kubelet_config_key : String

    # Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
    property name : String

    # Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
    property namespace : String

    # ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    property resource_version : String | Nil

    # UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    property uid : String | Nil

    ::YAML.mapping({
      kubelet_config_key: {type: String, nilable: false, key: "kubeletConfigKey", getter: false, setter: false},
      name:               {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace:          {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      resource_version:   {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      uid:                {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      kubelet_config_key: {type: String, nilable: false, key: "kubeletConfigKey", getter: false, setter: false},
      name:               {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace:          {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      resource_version:   {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      uid:                {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    def initialize(*, @kubelet_config_key : String, @name : String, @namespace : String, @resource_version : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
