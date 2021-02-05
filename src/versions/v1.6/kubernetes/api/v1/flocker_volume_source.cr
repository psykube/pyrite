# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
  class Kubernetes::Api::V1::FlockerVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
    @[::JSON::Field(key: "datasetName")]
    @[::YAML::Field(key: "datasetName")]
    property dataset_name : String | Nil

    # UUID of the dataset. This is unique identifier of a Flocker dataset
    @[::JSON::Field(key: "datasetUUID")]
    @[::YAML::Field(key: "datasetUUID")]
    property dataset_uuid : String | Nil

    def initialize(*, @dataset_name : String | Nil = nil, @dataset_uuid : String | Nil = nil)
    end
  end
end
