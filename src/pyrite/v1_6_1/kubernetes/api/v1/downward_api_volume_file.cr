# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# DownwardAPIVolumeFile represents information to create the file containing the pod field
class Pyrite::V1_6_1::Kubernetes::Api::V1::DownwardAPIVolumeFile
  # Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
  property field_ref : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ObjectFieldSelector

  # Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  property mode : Int32?

  # Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  property path : String

  # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  property resource_field_ref : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceFieldSelector

  YAML.mapping({field_ref:          {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ObjectFieldSelector, nilable: true, key: fieldRef, getter: false, setter: false},
                mode:               {type: Int32, nilable: true, key: mode, getter: false, setter: false},
                path:               {type: String, nilable: false, key: path, getter: false, setter: false},
                resource_field_ref: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceFieldSelector, nilable: true, key: resourceFieldRef, getter: false, setter: false}}, true)

  JSON.mapping({field_ref:          {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ObjectFieldSelector, nilable: true, key: fieldRef, getter: false, setter: false},
                mode:               {type: Int32, nilable: true, key: mode, getter: false, setter: false},
                path:               {type: String, nilable: false, key: path, getter: false, setter: false},
                resource_field_ref: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceFieldSelector, nilable: true, key: resourceFieldRef, getter: false, setter: false}}, true)

  def initialize(@field_ref : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ObjectFieldSelector = nil, @mode : Int32? = nil, @path : String? = nil, @resource_field_ref : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ResourceFieldSelector = nil)
  end
end
