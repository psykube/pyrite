# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # volumeDevice describes a mapping of a raw block device within a container.
  class Api::Core::V1::VolumeDevice
    # devicePath is the path inside of the container that the device will be mapped to.
    property device_path : String

    # name must match the name of a persistentVolumeClaim in the pod
    property name : String

    ::YAML.mapping({
      device_path: {type: String, nilable: false, key: "devicePath", getter: false, setter: false},
      name:        {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      device_path: {type: String, nilable: false, key: "devicePath", getter: false, setter: false},
      name:        {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @device_path : String | Nil = nil, @name : String | Nil = nil)
    end
  end
end
