# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
  class Api::Authentication::V1beta1::TokenReview < Kubernetes::Object
    @api_version = "authentication.k8s.io/v1beta1"
    @kind = "TokenReview"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "authentication.k8s.io/v1beta1" && instance.kind == "TokenReview"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "authentication.k8s.io/v1beta1" && instance.kind == "TokenReview"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Spec holds information about the request being evaluated
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Authentication::V1beta1::TokenReviewSpec

    # Status is filled in by the server and indicates whether the request can be authenticated.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Authentication::V1beta1::TokenReviewStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Authentication::V1beta1::TokenReviewSpec, @status : Api::Authentication::V1beta1::TokenReviewStatus | Nil = nil)
    end
  end
end
