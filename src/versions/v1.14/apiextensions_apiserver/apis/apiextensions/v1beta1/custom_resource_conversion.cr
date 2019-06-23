# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceConversion describes how to convert different versions of a CR.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    # ConversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, conversion will fail for this object. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Default to `['v1beta1']`.
    property conversion_review_versions : Array(String) | Nil

    # `strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option.
    property strategy : String

    # `webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    property webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil

    ::YAML.mapping({
      conversion_review_versions: {type: Array(String), nilable: true, key: "conversionReviewVersions", getter: false, setter: false},
      strategy:                   {type: String, nilable: false, key: "strategy", getter: false, setter: false},
      webhook_client_config:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig, nilable: true, key: "webhookClientConfig", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conversion_review_versions: {type: Array(String), nilable: true, key: "conversionReviewVersions", getter: false, setter: false},
      strategy:                   {type: String, nilable: false, key: "strategy", getter: false, setter: false},
      webhook_client_config:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig, nilable: true, key: "webhookClientConfig", getter: false, setter: false},
    }, true)

    def initialize(*, @strategy : String, @conversion_review_versions : Array | Nil = nil, @webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil = nil)
    end
  end
end
