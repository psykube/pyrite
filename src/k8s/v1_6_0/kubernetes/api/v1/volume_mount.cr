require "yaml"
require "json"

# VolumeMount describes a mounting of a Volume within a container.
class K8S::V1_6_0::Kubernetes::Api::V1::VolumeMount
  # Path within the container at which the volume should be mounted. Must not contain ':'.
  property mount_path : String

  # This must match the Name of a Volume.
  property name : String

  # Mounted read-only if true, read-write otherwise (false or unspecified).Defaults to false.
  property read_only : Bool?

  # Path within the volume from which the container's volume should be mounted.Defaults to "" (volume's root).
  property sub_path : String?

  YAML.mapping({mount_path: {type: String, nilable: false, key: mountPath, getter: false, setter: false},
                name:       {type: String, nilable: false, key: name, getter: false, setter: false},
                read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                sub_path:   {type: String, nilable: true, key: subPath, getter: false, setter: false}}, true)

  JSON.mapping({mount_path: {type: String, nilable: false, key: mountPath, getter: false, setter: false},
                name:       {type: String, nilable: false, key: name, getter: false, setter: false},
                read_only:  {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                sub_path:   {type: String, nilable: true, key: subPath, getter: false, setter: false}}, true)

  def initialize(@mount_path, @name, @read_only = nil, @sub_path = nil)
  end
end
