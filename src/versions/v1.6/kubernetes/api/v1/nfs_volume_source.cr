# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
  class Kubernetes::Api::V1::NFSVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Path that is exported by the NFS server. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String

    # ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # Server is the hostname or IP address of the NFS server. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    @[::JSON::Field(key: "server")]
    @[::YAML::Field(key: "server")]
    property server : String

    def initialize(*, @path : String, @read_only : Bool | Nil = nil, @server : String)
    end
  end
end
