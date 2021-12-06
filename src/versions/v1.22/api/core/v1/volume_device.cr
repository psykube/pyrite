# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # volumeDevice describes a mapping of a raw block device within a container.
  class Api::Core::V1::VolumeDevice < Kubernetes::Spec
    # devicePath is the path inside of the container that the device will be mapped to.
    @[::JSON::Field(key: "devicePath")]
    @[::YAML::Field(key: "devicePath")]
    property device_path : String

    # name must match the name of a persistentVolumeClaim in the pod
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @device_path : String, @name : String)
    end
  end
end
