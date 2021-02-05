# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  class Kubernetes::Api::V1::HostPathVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Path of the directory on the host. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    @[JSON::Field(key: "path")]
    @[YAML::Field(key: "path")]
    property path : String

    def initialize(*, @path : String)
    end
  end
end
