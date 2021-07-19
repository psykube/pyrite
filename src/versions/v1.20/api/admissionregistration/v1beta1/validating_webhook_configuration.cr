# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ValidatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and object without changing it. Deprecated in v1.16, planned for removal in v1.19. Use [admissionregistration.k8s.io/v1 ValidatingWebhookConfiguration instead.](admissionregistration.k8s.io/v1 ValidatingWebhookConfiguration instead.)
  class Api::Admissionregistration::V1beta1::ValidatingWebhookConfiguration < Kubernetes::Object
    @api_version = "admissionregistration/v1beta1"
    @kind = "ValidatingWebhookConfiguration"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "admissionregistration/v1beta1" && instance.kind == "ValidatingWebhookConfiguration"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "admissionregistration/v1beta1" && instance.kind == "ValidatingWebhookConfiguration"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Webhooks is a list of webhooks and the affected resources and operations.
    @[::JSON::Field(key: "webhooks")]
    @[::YAML::Field(key: "webhooks")]
    property webhooks : Array(Api::Admissionregistration::V1beta1::ValidatingWebhook) | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @webhooks : Array | Nil = nil)
    end
  end
end
