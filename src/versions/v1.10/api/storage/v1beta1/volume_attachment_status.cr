# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachmentStatus is the status of a VolumeAttachment request.
  class Api::Storage::V1beta1::VolumeAttachmentStatus
    # The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    property attach_error : Api::Storage::V1beta1::VolumeError | Nil

    # Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    property attached : Bool

    # Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    property attachment_metadata : Hash(String, String) | Nil

    # The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
    property detach_error : Api::Storage::V1beta1::VolumeError | Nil

    ::YAML.mapping({
      attach_error:        {type: Api::Storage::V1beta1::VolumeError, nilable: true, key: "attachError", getter: false, setter: false},
      attached:            {type: Bool, nilable: false, key: "attached", getter: false, setter: false},
      attachment_metadata: {type: Hash(String, String), nilable: true, key: "attachmentMetadata", getter: false, setter: false},
      detach_error:        {type: Api::Storage::V1beta1::VolumeError, nilable: true, key: "detachError", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      attach_error:        {type: Api::Storage::V1beta1::VolumeError, nilable: true, key: "attachError", getter: false, setter: false},
      attached:            {type: Bool, nilable: false, key: "attached", getter: false, setter: false},
      attachment_metadata: {type: Hash(String, String), nilable: true, key: "attachmentMetadata", getter: false, setter: false},
      detach_error:        {type: Api::Storage::V1beta1::VolumeError, nilable: true, key: "detachError", getter: false, setter: false},
    }, true)

    def initialize(*, @attach_error : Api::Storage::V1beta1::VolumeError | Nil = nil, @attached : Bool | Nil = nil, @attachment_metadata : Hash(String, String) | Nil = nil, @detach_error : Api::Storage::V1beta1::VolumeError | Nil = nil)
    end
  end
end
