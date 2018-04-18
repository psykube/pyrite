# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents storage that is managed by an external CSI volume driver
  class Api::Core::V1::CSIPersistentVolumeSource
    # Driver is the name of the driver to use for this volume. Required.
    property driver : String

    # Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [(read/write).]((read/write).)
    property read_only : Bool | Nil

    # VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
    property volume_handle : String

    ::YAML.mapping({
      driver:        {type: String, nilable: false, key: "driver", getter: false, setter: false},
      read_only:     {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_handle: {type: String, nilable: false, key: "volumeHandle", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      driver:        {type: String, nilable: false, key: "driver", getter: false, setter: false},
      read_only:     {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      volume_handle: {type: String, nilable: false, key: "volumeHandle", getter: false, setter: false},
    }, true)

    def initialize(*, @driver : String, @volume_handle : String, @read_only : Bool | Nil = nil)
    end
  end
end
