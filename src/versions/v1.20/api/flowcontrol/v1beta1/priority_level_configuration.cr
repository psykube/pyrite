# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfiguration represents the configuration of a priority level.
  class Api::Flowcontrol::V1beta1::PriorityLevelConfiguration
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "flowcontrol/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "PriorityLevelConfiguration"

    def self.new(pull : JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "flowcontrol/v1beta1" && instance.kind == "PriorityLevelConfiguration"
          raise JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "flowcontrol/v1beta1" && instance.kind == "PriorityLevelConfiguration"
          raise YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # `metadata` is the standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # `spec` is the specification of the desired behavior of a "request-priority". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec | Nil

    # `status` is the current status of a "request-priority". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec | Nil = nil, @status : Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus | Nil = nil)
    end
  end

  module Resources::Flowcontrol::V1beta1
    alias PriorityLevelConfiguration = ::Pyrite::Api::Flowcontrol::V1beta1::PriorityLevelConfiguration
  end
end
