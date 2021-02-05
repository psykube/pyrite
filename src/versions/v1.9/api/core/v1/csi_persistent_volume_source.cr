# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents storage that is managed by an external CSI volume driver
  class Api::Core::V1::CSIPersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Driver is the name of the driver to use for this volume. Required.
    @[JSON::Field(key: "driver")]
    @[YAML::Field(key: "driver")]
    property driver : String

    # Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [(read/write).]((read/write).)
    @[JSON::Field(key: "readOnly")]
    @[YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
    @[JSON::Field(key: "volumeHandle")]
    @[YAML::Field(key: "volumeHandle")]
    property volume_handle : String

    def initialize(*, @driver : String, @read_only : Bool | Nil = nil, @volume_handle : String)
    end
  end
end
