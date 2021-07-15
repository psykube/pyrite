# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
  class Api::Core::V1::QuobyteVolumeSource < Kubernetes::Spec
    # Group to map volume access to Default is no group
    @[::JSON::Field(key: "group")]
    @[::YAML::Field(key: "group")]
    property group : String | Nil

    # ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
    @[::JSON::Field(key: "registry")]
    @[::YAML::Field(key: "registry")]
    property registry : String

    # Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
    @[::JSON::Field(key: "tenant")]
    @[::YAML::Field(key: "tenant")]
    property tenant : String | Nil

    # User to map volume access to Defaults to serivceaccount user
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : String | Nil

    # Volume is a string that references an already created Quobyte volume by name.
    @[::JSON::Field(key: "volume")]
    @[::YAML::Field(key: "volume")]
    property volume : String

    def initialize(*, @group : String | Nil = nil, @read_only : Bool | Nil = nil, @registry : String, @tenant : String | Nil = nil, @user : String | Nil = nil, @volume : String)
    end
  end
end
