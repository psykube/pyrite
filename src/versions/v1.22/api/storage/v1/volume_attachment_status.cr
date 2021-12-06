# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachmentStatus is the status of a VolumeAttachment request.
  class Api::Storage::V1::VolumeAttachmentStatus < Kubernetes::Spec
    # The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "attachError")]
    @[::YAML::Field(key: "attachError")]
    property attach_error : Api::Storage::V1::VolumeError | Nil

    # Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "attached")]
    @[::YAML::Field(key: "attached")]
    property attached : Bool

    # Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "attachmentMetadata")]
    @[::YAML::Field(key: "attachmentMetadata")]
    property attachment_metadata : Hash(String, String) | Nil

    # The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "detachError")]
    @[::YAML::Field(key: "detachError")]
    property detach_error : Api::Storage::V1::VolumeError | Nil

    def initialize(*, @attach_error : Api::Storage::V1::VolumeError | Nil = nil, @attached : Bool, @attachment_metadata : Hash(String, String) | Nil = nil, @detach_error : Api::Storage::V1::VolumeError | Nil = nil)
    end
  end
end
