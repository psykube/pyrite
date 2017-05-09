# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
  class Definitions::V1::QuobyteVolumeSource
    # Group to map volume access to Default is no group
    property group : String?

    # ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
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

    def initialize(@group : String? = nil, @read_only : Bool? = nil, @registry : String? = nil, @user : String? = nil, @volume : String? = nil)
    end
  end
end
