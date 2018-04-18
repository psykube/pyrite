# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
  class Kubernetes::Api::V1::NFSVolumeSource
    # Path that is exported by the NFS server. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    property path : String

    # ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    property read_only : Bool | Nil

    # Server is the hostname or IP address of the NFS server. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    property server : String

    ::YAML.mapping({
      path:      {type: String, nilable: false, key: "path", getter: false, setter: false},
      read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      server:    {type: String, nilable: false, key: "server", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      path:      {type: String, nilable: false, key: "path", getter: false, setter: false},
      read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      server:    {type: String, nilable: false, key: "server", getter: false, setter: false},
    }, true)

    def initialize(*, @path : String, @server : String, @read_only : Bool | Nil = nil)
    end
  end
end
