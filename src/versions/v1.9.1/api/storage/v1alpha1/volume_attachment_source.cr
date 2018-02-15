# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
  class Api::Storage::V1alpha1::VolumeAttachmentSource
    # Name of the persistent volume to attach.
    property persistent_volume_name : String | Nil

    ::YAML.mapping({
      persistent_volume_name: {type: String, nilable: true, key: "persistentVolumeName", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      persistent_volume_name: {type: String, nilable: true, key: "persistentVolumeName", getter: false, setter: false},
    }, true)

    def initialize(*, @persistent_volume_name : String | Nil = nil)
    end
  end
end
