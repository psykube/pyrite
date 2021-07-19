# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenRequest requests a token for a given service account.
  class Api::Authentication::V1::TokenRequest < Kubernetes::Object
    @api_version = "authentication.k8s.io/v1"
    @kind = "TokenRequest"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "authentication.k8s.io/v1" && instance.kind == "TokenRequest"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "authentication.k8s.io/v1" && instance.kind == "TokenRequest"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Authentication::V1::TokenRequestSpec

    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Authentication::V1::TokenRequestStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Authentication::V1::TokenRequestSpec, @status : Api::Authentication::V1::TokenRequestStatus | Nil = nil)
    end
  end
end
