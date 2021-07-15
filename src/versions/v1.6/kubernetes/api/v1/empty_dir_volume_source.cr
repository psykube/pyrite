# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
  class Kubernetes::Api::V1::EmptyDirVolumeSource < Kubernetes::Spec
    # What type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: [http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)
    @[::JSON::Field(key: "medium")]
    @[::YAML::Field(key: "medium")]
    property medium : String | Nil

    def initialize(*, @medium : String | Nil = nil)
    end
  end
end
