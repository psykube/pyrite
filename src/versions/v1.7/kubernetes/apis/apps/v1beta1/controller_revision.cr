# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ControllerRevision implements an immutable snapshot of state data. Clients are responsible for serializing and deserializing the objects that contain their internal state. Once a ControllerRevision has been successfully created, it can not be updated. The API Server will fail validation of all requests that attempt to mutate the Data field. ControllerRevisions may, however, be deleted. Note that, due to its use by both the DaemonSet and StatefulSet controllers for update and rollback, this object is beta. However, it may be subject to name and representation changes in future releases, and clients should not depend on its stability. It is primarily for internal use by controllers.
  class Kubernetes::Apis::Apps::V1beta1::ControllerRevision < Kubernetes::Object
    @api_version = "apps/v1beta1"
    @kind = "ControllerRevision"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "apps/v1beta1" && instance.kind == "ControllerRevision"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "apps/v1beta1" && instance.kind == "ControllerRevision"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Data is the serialized representation of the state.
    @[::JSON::Field(key: "data")]
    @[::YAML::Field(key: "data")]
    property data : Apimachinery::Runtime::RawExtension | Nil

    # Revision indicates the revision of the state represented by Data.
    @[::JSON::Field(key: "revision")]
    @[::YAML::Field(key: "revision")]
    property revision : Int32

    def initialize(*, @data : Apimachinery::Runtime::RawExtension | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @revision : Int32)
    end
  end
end
