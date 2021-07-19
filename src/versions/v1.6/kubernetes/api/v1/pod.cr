# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts.
  class Kubernetes::Api::V1::Pod < Kubernetes::Object
    @api_version = "v1"
    @kind = "Pod"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "Pod"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "Pod"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Specification of the desired behavior of the pod. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Api::V1::PodSpec | Nil

    # Most recently observed status of the pod. This data may not be up to date. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Api::V1::PodStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::PodSpec | Nil = nil, @status : Kubernetes::Api::V1::PodStatus | Nil = nil)
    end
  end
end
