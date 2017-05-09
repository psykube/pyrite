# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  class Definitions::V1::AzureFileVolumeSource
    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool?

    # the name of secret that contains Azure Storage Account Name and Key
    property secret_name : String

    # Share Name
    property share_name : String

    YAML.mapping({read_only:   {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  secret_name: {type: String, nilable: false, key: secretName, getter: false, setter: false},
                  share_name:  {type: String, nilable: false, key: shareName, getter: false, setter: false}}, true)

    JSON.mapping({read_only:   {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                  secret_name: {type: String, nilable: false, key: secretName, getter: false, setter: false},
                  share_name:  {type: String, nilable: false, key: shareName, getter: false, setter: false}}, true)

    def initialize(@read_only : Bool? = nil, @secret_name : String? = nil, @share_name : String? = nil)
    end
  end
end
