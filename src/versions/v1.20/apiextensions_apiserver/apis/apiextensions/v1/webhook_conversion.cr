# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # WebhookConversion describes how to call a conversion webhook
  class ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
    @[::JSON::Field(key: "clientConfig")]
    @[::YAML::Field(key: "clientConfig")]
    property client_config : ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig | Nil

    # conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
    @[::JSON::Field(key: "conversionReviewVersions")]
    @[::YAML::Field(key: "conversionReviewVersions")]
    property conversion_review_versions : Array(String)

    def initialize(*, @client_config : ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig | Nil = nil, @conversion_review_versions : Array)
    end
  end
end
