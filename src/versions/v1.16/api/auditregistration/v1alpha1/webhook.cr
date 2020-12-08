# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Webhook holds the configuration of the webhook
  class Api::Auditregistration::V1alpha1::Webhook
    # ClientConfig holds the connection parameters for the webhook required
    property client_config : Api::Auditregistration::V1alpha1::WebhookClientConfig

    # Throttle holds the options for throttling the webhook
    property throttle : Api::Auditregistration::V1alpha1::WebhookThrottleConfig | Nil

    ::YAML.mapping({
      client_config: {type: Api::Auditregistration::V1alpha1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
      throttle:      {type: Api::Auditregistration::V1alpha1::WebhookThrottleConfig, nilable: true, key: "throttle", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      client_config: {type: Api::Auditregistration::V1alpha1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
      throttle:      {type: Api::Auditregistration::V1alpha1::WebhookThrottleConfig, nilable: true, key: "throttle", getter: false, setter: false},
    }, true)

    def initialize(*, @client_config : Api::Auditregistration::V1alpha1::WebhookClientConfig, @throttle : Api::Auditregistration::V1alpha1::WebhookThrottleConfig | Nil = nil)
    end
  end
end
