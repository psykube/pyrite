# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  class Api::Core::V1::GlusterfsVolumeSource < Kubernetes::Spec
    # EndpointsName is the endpoint name that details Glusterfs topology. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)
    @[::JSON::Field(key: "endpoints")]
    @[::YAML::Field(key: "endpoints")]
    property endpoints : String

    # Path is the Glusterfs volume path. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String

    # ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod](https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    def initialize(*, @endpoints : String, @path : String, @read_only : Bool | Nil = nil)
    end
  end
end
