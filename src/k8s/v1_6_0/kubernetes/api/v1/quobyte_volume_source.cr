# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Represents a Quobyte mount that lasts the lifetime of a pod.Quobyte volumes do not support ownership management or SELinux relabeling.
class K8S::V1_6_0::Kubernetes::Api::V1::QuobyteVolumeSource
  # Group to map volume access to Default is no group
  property group : String?

  # ReadOnly here will force the Quobyte volume to be mounted with read-only permissions.Defaults to false.
  property read_only : Bool?

  # Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
  property registry : String

  # User to map volume access to Defaults to serivceaccount user
  property user : String?

  # Volume is a string that references an already created Quobyte volume by name.
  property volume : String

  YAML.mapping({group:     {type: String, nilable: true, key: group, getter: false, setter: false},
                read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                registry:  {type: String, nilable: false, key: registry, getter: false, setter: false},
                user:      {type: String, nilable: true, key: user, getter: false, setter: false},
                volume:    {type: String, nilable: false, key: volume, getter: false, setter: false}}, true)

  JSON.mapping({group:     {type: String, nilable: true, key: group, getter: false, setter: false},
                read_only: {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                registry:  {type: String, nilable: false, key: registry, getter: false, setter: false},
                user:      {type: String, nilable: true, key: user, getter: false, setter: false},
                volume:    {type: String, nilable: false, key: volume, getter: false, setter: false}}, true)

  def initialize(@registry, @volume, @group = nil, @read_only = nil, @user = nil)
  end
end
