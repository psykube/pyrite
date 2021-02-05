# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceConversion describes how to convert different versions of a CR.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option.
    @[::JSON::Field(key: "strategy")]
    @[::YAML::Field(key: "strategy")]
    property strategy : String

    # `webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    @[::JSON::Field(key: "webhookClientConfig")]
    @[::YAML::Field(key: "webhookClientConfig")]
    property webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil

    def initialize(*, @strategy : String, @webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil = nil)
    end
  end
end
