# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeMount describes a mounting of a Volume within a container.
  class Api::Core::V1::VolumeMount
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Path within the container at which the volume should be mounted.  Must not contain ':'.
    @[::JSON::Field(key: "mountPath")]
    @[::YAML::Field(key: "mountPath")]
    property mount_path : String

    # mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationHostToContainer is used. This field is alpha in 1.8 and can be reworked or removed in a future release.
    @[::JSON::Field(key: "mountPropagation")]
    @[::YAML::Field(key: "mountPropagation")]
    property mount_propagation : String | Nil

    # This must match the Name of a Volume.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
    @[::JSON::Field(key: "subPath")]
    @[::YAML::Field(key: "subPath")]
    property sub_path : String | Nil

    def initialize(*, @mount_path : String, @mount_propagation : String | Nil = nil, @name : String, @read_only : Bool | Nil = nil, @sub_path : String | Nil = nil)
    end
  end
end
