# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DownwardAPIVolumeFile represents information to create the file containing the pod field
  class Kubernetes::Api::V1::DownwardAPIVolumeFile
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
    @[::JSON::Field(key: "fieldRef")]
    @[::YAML::Field(key: "fieldRef")]
    property field_ref : Kubernetes::Api::V1::ObjectFieldSelector | Nil

    # Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[::JSON::Field(key: "mode")]
    @[::YAML::Field(key: "mode")]
    property mode : Int32 | Nil

    # Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
    @[::JSON::Field(key: "resourceFieldRef")]
    @[::YAML::Field(key: "resourceFieldRef")]
    property resource_field_ref : Kubernetes::Api::V1::ResourceFieldSelector | Nil

    def initialize(*, @field_ref : Kubernetes::Api::V1::ObjectFieldSelector | Nil = nil, @mode : Int32 | Nil = nil, @path : String, @resource_field_ref : Kubernetes::Api::V1::ResourceFieldSelector | Nil = nil)
    end
  end
end
