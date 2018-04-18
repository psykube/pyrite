# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  class Kubernetes::Api::V1::HostPathVolumeSource
    # Path of the directory on the host. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    property path : String

    ::YAML.mapping({
      path: {type: String, nilable: false, key: "path", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      path: {type: String, nilable: false, key: "path", getter: false, setter: false},
    }, true)

    def initialize(*, @path : String)
    end
  end
end
