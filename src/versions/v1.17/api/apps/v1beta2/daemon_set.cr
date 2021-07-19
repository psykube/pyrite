# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED - This group version of DaemonSet is deprecated by [apps/v1/DaemonSet. See the release notes for more information. DaemonSet represents the configuration of a daemon set.](apps/v1/DaemonSet. See the release notes for more information. DaemonSet represents the configuration of a daemon set.)
  class Api::Apps::V1beta2::DaemonSet < Kubernetes::Object
    @api_version = "apps/v1beta2"
    @kind = "DaemonSet"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "apps/v1beta2" && instance.kind == "DaemonSet"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "apps/v1beta2" && instance.kind == "DaemonSet"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # The desired behavior of this daemon set. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Apps::V1beta2::DaemonSetSpec | Nil

    # The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Apps::V1beta2::DaemonSetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apps::V1beta2::DaemonSetSpec | Nil = nil, @status : Api::Apps::V1beta2::DaemonSetStatus | Nil = nil)
    end
  end
end
