# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  class Kubernetes::Api::V1::GlusterfsVolumeSource
    # EndpointsName is the endpoint name that details Glusterfs topology. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    property endpoints : String

    # Path is the Glusterfs volume path. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    property path : String

    # ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    property read_only : Bool | Nil

    ::YAML.mapping({
      endpoints: {type: String, nilable: false, key: "endpoints", getter: false, setter: false},
      path:      {type: String, nilable: false, key: "path", getter: false, setter: false},
      read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      endpoints: {type: String, nilable: false, key: "endpoints", getter: false, setter: false},
      path:      {type: String, nilable: false, key: "path", getter: false, setter: false},
      read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    }, true)

    def initialize(*, @endpoints : String | Nil = nil, @path : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
