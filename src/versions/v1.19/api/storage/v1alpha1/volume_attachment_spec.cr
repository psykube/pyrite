# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachmentSpec is the specification of a VolumeAttachment request.
  class Api::Storage::V1alpha1::VolumeAttachmentSpec
    # Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
    property attacher : String

    # The node that the volume should be attached to.
    property node_name : String

    # Source represents the volume that should be attached.
    property source : Api::Storage::V1alpha1::VolumeAttachmentSource

    ::YAML.mapping({
      attacher:  {type: String, nilable: false, key: "attacher", getter: false, setter: false},
      node_name: {type: String, nilable: false, key: "nodeName", getter: false, setter: false},
      source:    {type: Api::Storage::V1alpha1::VolumeAttachmentSource, nilable: false, key: "source", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      attacher:  {type: String, nilable: false, key: "attacher", getter: false, setter: false},
      node_name: {type: String, nilable: false, key: "nodeName", getter: false, setter: false},
      source:    {type: Api::Storage::V1alpha1::VolumeAttachmentSource, nilable: false, key: "source", getter: false, setter: false},
    }, true)

    def initialize(*, @attacher : String, @node_name : String, @source : Api::Storage::V1alpha1::VolumeAttachmentSource)
    end
  end
end
