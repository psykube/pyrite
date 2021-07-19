# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  #
  #  Storage version of a specific resource.
  class Api::Apiserverinternal::V1alpha1::StorageVersion < Kubernetes::Object
    @api_version = "apiserverinternal/v1alpha1"
    @kind = "StorageVersion"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "apiserverinternal/v1alpha1" && instance.kind == "StorageVersion"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "apiserverinternal/v1alpha1" && instance.kind == "StorageVersion"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Spec is an empty spec. It is here to comply with Kubernetes API style.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Apiserverinternal::V1alpha1::StorageVersionSpec

    # API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Apiserverinternal::V1alpha1::StorageVersionStatus

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apiserverinternal::V1alpha1::StorageVersionSpec, @status : Api::Apiserverinternal::V1alpha1::StorageVersionStatus)
    end
  end
end
