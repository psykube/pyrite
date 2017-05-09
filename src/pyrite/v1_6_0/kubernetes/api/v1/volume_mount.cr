# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # VolumeMount describes a mounting of a Volume within a container.
  class Definitions::Kubernetes::Api::V1::VolumeMount
    # Path within the container at which the volume should be mounted.  Must not contain ':'.
    property mount_path : String

    # This must match the Name of a Volume.
    property name : String

    # Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    property read_only : Bool?

    # Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
    property sub_path : String?

    YAML.mapping({mount_path: {type: String, nilable: false, key: mountPath, getter: false, setter: false},
                  name:       {type: String, nilable: false, key: name, getter: false, setter: false},
                  read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  sub_path:   {type: String, nilable: true, key: subPath, getter: false, setter: false}}, true)

    JSON.mapping({mount_path: {type: String, nilable: false, key: mountPath, getter: false, setter: false},
                  name:       {type: String, nilable: false, key: name, getter: false, setter: false},
                  read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  sub_path:   {type: String, nilable: true, key: subPath, getter: false, setter: false}}, true)

    def initialize(@mount_path : String? = nil, @name : String? = nil, @read_only : Bool? = nil, @sub_path : String? = nil)
    end
  end
end
