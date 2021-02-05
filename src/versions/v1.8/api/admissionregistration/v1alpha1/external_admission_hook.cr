# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalAdmissionHook describes an external admission webhook and the resources and operations it applies to.
  class Api::Admissionregistration::V1alpha1::ExternalAdmissionHook
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ClientConfig defines how to communicate with the hook. Required
    @[::JSON::Field(key: "clientConfig")]
    @[::YAML::Field(key: "clientConfig")]
    property client_config : Api::Admissionregistration::V1alpha1::AdmissionHookClientConfig

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    @[::JSON::Field(key: "failurePolicy")]
    @[::YAML::Field(key: "failurePolicy")]
    property failure_policy : String | Nil

    # The name of the external admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule.)
    @[::JSON::Field(key: "rules")]
    @[::YAML::Field(key: "rules")]
    property rules : Array(Api::Admissionregistration::V1alpha1::RuleWithOperations) | Nil

    def initialize(*, @client_config : Api::Admissionregistration::V1alpha1::AdmissionHookClientConfig, @failure_policy : String | Nil = nil, @name : String, @rules : Array | Nil = nil)
    end
  end
end
