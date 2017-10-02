# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  class Api::Core::V1::AzureFilePersistentVolumeSource
    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool | Nil

    # the name of secret that contains Azure Storage Account Name and Key
    property secret_name : String

    # the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
    property secret_namespace : String | Nil

    # Share Name
    property share_name : String

    YAML.mapping({
      read_only:        {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_name:      {type: String, nilable: false, key: "secretName", getter: false, setter: false},
      secret_namespace: {type: String, nilable: true, key: "secretNamespace", getter: false, setter: false},
      share_name:       {type: String, nilable: false, key: "shareName", getter: false, setter: false},
    }, true)

    JSON.mapping({
      read_only:        {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_name:      {type: String, nilable: false, key: "secretName", getter: false, setter: false},
      secret_namespace: {type: String, nilable: true, key: "secretNamespace", getter: false, setter: false},
      share_name:       {type: String, nilable: false, key: "shareName", getter: false, setter: false},
    }, true)

    def initialize(*, @read_only : Bool | Nil = nil, @secret_name : String | Nil = nil, @secret_namespace : String | Nil = nil, @share_name : String | Nil = nil)
    end
  end
end
