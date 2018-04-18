# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Webhook describes an admission webhook and the resources and operations it applies to.
  class Api::Admissionregistration::V1beta1::Webhook
    # ClientConfig defines how to communicate with the hook. Required
    property client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    property failure_policy : String | Nil

    # The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
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
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)
    property rules : Array(Api::Admissionregistration::V1beta1::RuleWithOperations) | Nil

    ::YAML.mapping({
      client_config:      {type: Api::Admissionregistration::V1beta1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
      failure_policy:     {type: String, nilable: true, key: "failurePolicy", getter: false, setter: false},
      name:               {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      rules:              {type: Array(Api::Admissionregistration::V1beta1::RuleWithOperations), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      client_config:      {type: Api::Admissionregistration::V1beta1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
      failure_policy:     {type: String, nilable: true, key: "failurePolicy", getter: false, setter: false},
      name:               {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      rules:              {type: Array(Api::Admissionregistration::V1beta1::RuleWithOperations), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig, @name : String, @failure_policy : String | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @rules : Array | Nil = nil)
    end
  end
end
