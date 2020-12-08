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
    # Standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
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

    def initialize(*, @spec : Api::Storage::V1beta1::VolumeAttachmentSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Storage::V1beta1::VolumeAttachmentStatus | Nil = nil)
    end

    # create a VolumeAttachment
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind VolumeAttachment
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of VolumeAttachment
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil)
    end

    # read the specified VolumeAttachment
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified VolumeAttachment
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified VolumeAttachment
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a VolumeAttachment
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end
  end

  module Resources::Storage::V1beta1
    alias VolumeAttachment = ::Pyrite::Api::Storage::V1beta1::VolumeAttachment
  end
end
