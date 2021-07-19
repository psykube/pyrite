# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with similar attributes and is identified by a pair of strings: the name of the FlowSchema and a "flow distinguisher".
  class Api::Flowcontrol::V1beta1::FlowSchema < Kubernetes::Object
    @api_version = "flowcontrol.apiserver.k8s.io/v1beta1"
    @kind = "FlowSchema"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "flowcontrol.apiserver.k8s.io/v1beta1" && instance.kind == "FlowSchema"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "flowcontrol.apiserver.k8s.io/v1beta1" && instance.kind == "FlowSchema"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # `spec` is the specification of the desired behavior of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Flowcontrol::V1beta1::FlowSchemaSpec | Nil

    # `status` is the current status of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Flowcontrol::V1beta1::FlowSchemaStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Flowcontrol::V1beta1::FlowSchemaSpec | Nil = nil, @status : Api::Flowcontrol::V1beta1::FlowSchemaStatus | Nil = nil)
    end
  end
end
