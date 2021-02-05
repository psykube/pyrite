# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachmentSpec is the specification of a VolumeAttachment request.
  class Api::Storage::V1::VolumeAttachmentSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
    @[::JSON::Field(key: "attacher")]
    @[::YAML::Field(key: "attacher")]
    property attacher : String

    # The node that the volume should be attached to.
    @[::JSON::Field(key: "nodeName")]
    @[::YAML::Field(key: "nodeName")]
    property node_name : String

    # Source represents the volume that should be attached.
    @[::JSON::Field(key: "source")]
    @[::YAML::Field(key: "source")]
    property source : Api::Storage::V1::VolumeAttachmentSource

    def initialize(*, @attacher : String, @node_name : String, @source : Api::Storage::V1::VolumeAttachmentSource)
    end
  end
end
