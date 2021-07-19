# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIService represents a server for a particular GroupVersion. Name must be "version.group".
  class KubeAggregator::Apis::Apiregistration::V1::APIService < Kubernetes::Object
    @api_version = "apiregistration/v1"
    @kind = "APIService"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "apiregistration/v1" && instance.kind == "APIService"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "apiregistration/v1" && instance.kind == "APIService"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Spec contains information for locating and communicating with a server
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec | Nil

    # Status contains derived information about an API server
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec | Nil = nil, @status : KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus | Nil = nil)
    end
  end
end
