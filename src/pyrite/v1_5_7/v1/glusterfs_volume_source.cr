# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  class Definitions::V1::GlusterfsVolumeSource
    # EndpointsName is the endpoint name that details Glusterfs topology. More info: [http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    property endpoints : String

    # Path is the Glusterfs volume path. More info: [http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    property path : String

    # ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: [http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod](http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod)
    property read_only : Bool?

    YAML.mapping({endpoints: {type: String, nilable: false, key: endpoints, getter: false, setter: false},
                  path:      {type: String, nilable: false, key: path, getter: false, setter: false},
                  read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

    JSON.mapping({endpoints: {type: String, nilable: false, key: endpoints, getter: false, setter: false},
                  path:      {type: String, nilable: false, key: path, getter: false, setter: false},
                  read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false}}, true)

    def initialize(@endpoints : String? = nil, @path : String? = nil, @read_only : Bool? = nil)
    end
  end
end
