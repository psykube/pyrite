# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachment captures the intent to attach or detach the specified volume [to/from the specified node.](to/from the specified node.)
  #
  # VolumeAttachment objects are non-namespaced.
  class Api::Storage::V1beta1::VolumeAttachment
    getter api_version : String = "storage/v1beta1"
    getter kind : String = "VolumeAttachment"
    # Standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired [attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.)
    property spec : Api::Storage::V1beta1::VolumeAttachmentSpec

    # Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
    property status : Api::Storage::V1beta1::VolumeAttachmentStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "storage/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "VolumeAttachment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Storage::V1beta1::VolumeAttachmentSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Storage::V1beta1::VolumeAttachmentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "storage/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "VolumeAttachment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Storage::V1beta1::VolumeAttachmentSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Storage::V1beta1::VolumeAttachmentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Storage::V1beta1::VolumeAttachmentSpec | Nil = nil, @status : Api::Storage::V1beta1::VolumeAttachmentStatus | Nil = nil)
    end
  end

  module Resources::Storage::V1beta1
    alias VolumeAttachment = ::Pyrite::Api::Storage::V1beta1::VolumeAttachment
  end
end
