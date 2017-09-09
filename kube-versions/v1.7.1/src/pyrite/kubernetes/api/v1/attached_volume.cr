# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AttachedVolume describes a volume attached to a node
  class Kubernetes::Api::V1::AttachedVolume
    # DevicePath represents the device path where the volume should be available
    property device_path : String

    # Name of the attached volume
    property name : String

    YAML.mapping({
      device_path: {type: String, nilable: false, key: "devicePath"},
      name:        {type: String, nilable: false, key: "name"},
    }, true)

    JSON.mapping({
      device_path: {type: String, nilable: false, key: "devicePath"},
      name:        {type: String, nilable: false, key: "name"},
    }, true)

    def initialize(*, @device_path : String | Nil = nil, @name : String | Nil = nil)
    end
  end
end
