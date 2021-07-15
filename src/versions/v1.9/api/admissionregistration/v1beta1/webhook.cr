# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Webhook describes an admission webhook and the resources and operations it applies to.
  class Api::Admissionregistration::V1beta1::Webhook < Kubernetes::Spec
    # ClientConfig defines how to communicate with the hook. Required
    @[::JSON::Field(key: "clientConfig")]
    @[::YAML::Field(key: "clientConfig")]
    property client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    @[::JSON::Field(key: "failurePolicy")]
    @[::YAML::Field(key: "failurePolicy")]
    property failure_policy : String | Nil

    # The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.
    #
    # For example, to run the webhook on any objects whose namespace is not associated with "runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
    #   "matchExpressions": [
    #     {
    #       "key": "runlevel",
    #       "operator": "NotIn",
    #       "values": [
    #         "0",
    #         "1"
    #       ]
    #     }
    #   ]
    # }
    #
    # If instead you want to only run the webhook on any objects whose namespace is associated with the "environment" of "prod" or "staging"; you will set the selector as follows: "namespaceSelector": {
    #   "matchExpressions": [
    #     {
    #       "key": "environment",
    #       "operator": "In",
    #       "values": [
    #         "prod",
    #         "staging"
    #       ]
    #     }
    #   ]
    # }
    #
    # See [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.)
    #
    # Default to the empty LabelSelector, which matches everything.
    @[::JSON::Field(key: "namespaceSelector")]
    @[::YAML::Field(key: "namespaceSelector")]
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule.)
    @[::JSON::Field(key: "rules")]
    @[::YAML::Field(key: "rules")]
    property rules : Array(Api::Admissionregistration::V1beta1::RuleWithOperations) | Nil

    def initialize(*, @client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig, @failure_policy : String | Nil = nil, @name : String, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @rules : Array | Nil = nil)
    end
  end
end
