# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Webhook holds the configuration of the webhook
  class Api::Auditregistration::V1alpha1::Webhook
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ClientConfig holds the connection parameters for the webhook required
    @[JSON::Field(key: "clientConfig")]
    @[YAML::Field(key: "clientConfig")]
    property client_config : Api::Auditregistration::V1alpha1::WebhookClientConfig

    # Throttle holds the options for throttling the webhook
    @[JSON::Field(key: "throttle")]
    @[YAML::Field(key: "throttle")]
    property throttle : Api::Auditregistration::V1alpha1::WebhookThrottleConfig | Nil

    def initialize(*, @client_config : Api::Auditregistration::V1alpha1::WebhookClientConfig, @throttle : Api::Auditregistration::V1alpha1::WebhookThrottleConfig | Nil = nil)
    end
  end
end
