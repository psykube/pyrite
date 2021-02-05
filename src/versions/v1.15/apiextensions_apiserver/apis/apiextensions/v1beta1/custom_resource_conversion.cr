# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceConversion describes how to convert different versions of a CR.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ConversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, conversion will fail for this object. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Default to `['v1beta1']`.
    @[::JSON::Field(key: "conversionReviewVersions")]
    @[::YAML::Field(key: "conversionReviewVersions")]
    property conversion_review_versions : Array(String) | Nil

    # `strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
    #   is needed for this option. This requires spec.preserveUnknownFields to be false.
    @[::JSON::Field(key: "strategy")]
    @[::YAML::Field(key: "strategy")]
    property strategy : String

    # `webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    @[::JSON::Field(key: "webhookClientConfig")]
    @[::YAML::Field(key: "webhookClientConfig")]
    property webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil

    def initialize(*, @conversion_review_versions : Array | Nil = nil, @strategy : String, @webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil = nil)
    end
  end
end
