# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  class Api::Core::V1::HostPathVolumeSource
    # Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    property path : String

    # Type for HostPath Volume Defaults to "" More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    property type : String | Nil

    ::YAML.mapping({
      path: {type: String, nilable: false, key: "path", getter: false, setter: false},
      type: {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      path: {type: String, nilable: false, key: "path", getter: false, setter: false},
      type: {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @path : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
