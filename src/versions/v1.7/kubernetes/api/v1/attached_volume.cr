# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AttachedVolume describes a volume attached to a node
  class Kubernetes::Api::V1::AttachedVolume < Kubernetes::Spec
    # DevicePath represents the device path where the volume should be available
    @[::JSON::Field(key: "devicePath")]
    @[::YAML::Field(key: "devicePath")]
    property device_path : String

    # Name of the attached volume
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @device_path : String, @name : String)
    end
  end
end
