# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfiguration represents the configuration of a priority level.
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfiguration < Kubernetes::Object
    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "flowcontrol/v1alpha1" && instance.kind == "PriorityLevelConfiguration"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "flowcontrol/v1alpha1" && instance.kind == "PriorityLevelConfiguration"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # `spec` is the specification of the desired behavior of a "request-priority". More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec | Nil

    # `status` is the current status of a "request-priority". More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec | Nil = nil, @status : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus | Nil = nil)
    end
  end
end
