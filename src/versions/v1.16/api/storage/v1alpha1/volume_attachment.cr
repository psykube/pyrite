# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachment captures the intent to attach or detach the specified volume [to/from the specified node.](to/from the specified node.)
  #
  # VolumeAttachment objects are non-namespaced.
  class Api::Storage::V1alpha1::VolumeAttachment < Kubernetes::Object
    @api_version = "storage.k8s.io/v1alpha1"
    @kind = "VolumeAttachment"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "storage.k8s.io/v1alpha1" && instance.kind == "VolumeAttachment"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "storage.k8s.io/v1alpha1" && instance.kind == "VolumeAttachment"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Specification of the desired [attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Storage::V1alpha1::VolumeAttachmentSpec

    # Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Storage::V1alpha1::VolumeAttachmentStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Storage::V1alpha1::VolumeAttachmentSpec, @status : Api::Storage::V1alpha1::VolumeAttachmentStatus | Nil = nil)
    end
  end
end
