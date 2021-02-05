# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object.
  class Api::Admissionregistration::V1beta1::MutatingWebhookConfiguration
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "admissionregistration/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "MutatingWebhookConfiguration"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "admissionregistration/v1beta1" && instance.kind == "MutatingWebhookConfiguration"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "admissionregistration/v1beta1" && instance.kind == "MutatingWebhookConfiguration"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Webhooks is a list of webhooks and the affected resources and operations.
    @[::JSON::Field(key: "webhooks")]
    @[::YAML::Field(key: "webhooks")]
    property webhooks : Array(Api::Admissionregistration::V1beta1::MutatingWebhook) | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @webhooks : Array | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1beta1
    alias MutatingWebhookConfiguration = ::Pyrite::Api::Admissionregistration::V1beta1::MutatingWebhookConfiguration
  end
end
