# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalAdmissionHook describes an external admission webhook and the resources and operations it applies to.
  class Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook
    # ClientConfig defines how to communicate with the hook. Required
    property client_config : Kubernetes::Apis::Admissionregistration::V1alpha1::AdmissionHookClientConfig

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    property failure_policy : String | Nil

    # The name of the external admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    property name : String

    # Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule.)
    property rules : Array(Kubernetes::Apis::Admissionregistration::V1alpha1::RuleWithOperations) | Nil

    YAML.mapping({
      client_config:  {type: Kubernetes::Apis::Admissionregistration::V1alpha1::AdmissionHookClientConfig, nilable: false, key: "clientConfig"},
      failure_policy: {type: String, nilable: true, key: "failurePolicy"},
      name:           {type: String, nilable: false, key: "name"},
      rules:          {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::RuleWithOperations), nilable: true, key: "rules"},
    }, true)

    JSON.mapping({
      client_config:  {type: Kubernetes::Apis::Admissionregistration::V1alpha1::AdmissionHookClientConfig, nilable: false, key: "clientConfig"},
      failure_policy: {type: String, nilable: true, key: "failurePolicy"},
      name:           {type: String, nilable: false, key: "name"},
      rules:          {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::RuleWithOperations), nilable: true, key: "rules"},
    }, true)

    def initialize(*, @client_config : Kubernetes::Apis::Admissionregistration::V1alpha1::AdmissionHookClientConfig | Nil = nil, @failure_policy : String | Nil = nil, @name : String | Nil = nil, @rules : Array | Nil = nil)
    end
  end
end
