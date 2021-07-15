# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Local represents directly-attached storage with node affinity (Beta feature)
  class Api::Core::V1::LocalVolumeSource < Kubernetes::Spec
    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...). Directories can be represented only by PersistentVolume with VolumeMode=Filesystem. Block devices can be represented only by VolumeMode=Block, which also requires the BlockVolume alpha feature gate to be enabled.
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String

    def initialize(*, @path : String)
    end
  end
end
