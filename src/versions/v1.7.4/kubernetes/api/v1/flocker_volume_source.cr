# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
  class Kubernetes::Api::V1::FlockerVolumeSource
    # Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
    property dataset_name : String | Nil

    # UUID of the dataset. This is unique identifier of a Flocker dataset
    property dataset_uui_d : String | Nil

    ::YAML.mapping({
      dataset_name:  {type: String, nilable: true, key: "datasetName", getter: false, setter: false},
      dataset_uui_d: {type: String, nilable: true, key: "datasetUUID", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      dataset_name:  {type: String, nilable: true, key: "datasetName", getter: false, setter: false},
      dataset_uui_d: {type: String, nilable: true, key: "datasetUUID", getter: false, setter: false},
    }, true)

    def initialize(*, @dataset_name : String | Nil = nil, @dataset_uui_d : String | Nil = nil)
    end
  end
end
