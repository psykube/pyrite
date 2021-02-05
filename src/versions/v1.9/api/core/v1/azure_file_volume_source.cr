# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  class Api::Core::V1::AzureFileVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # the name of secret that contains Azure Storage Account Name and Key
    @[::JSON::Field(key: "secretName")]
    @[::YAML::Field(key: "secretName")]
    property secret_name : String

    # Share Name
    @[::JSON::Field(key: "shareName")]
    @[::YAML::Field(key: "shareName")]
    property share_name : String

    def initialize(*, @read_only : Bool | Nil = nil, @secret_name : String, @share_name : String)
    end
  end
end
