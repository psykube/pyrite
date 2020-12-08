# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AuditSinkSpec holds the spec for the audit sink
  class Api::Auditregistration::V1alpha1::AuditSinkSpec
    # Policy defines the policy for selecting which events should be sent to the webhook required
    property policy : Api::Auditregistration::V1alpha1::Policy

    # Webhook to send events required
    property webhook : Api::Auditregistration::V1alpha1::Webhook

    ::YAML.mapping({
      policy:  {type: Api::Auditregistration::V1alpha1::Policy, nilable: false, key: "policy", getter: false, setter: false},
      webhook: {type: Api::Auditregistration::V1alpha1::Webhook, nilable: false, key: "webhook", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      policy:  {type: Api::Auditregistration::V1alpha1::Policy, nilable: false, key: "policy", getter: false, setter: false},
      webhook: {type: Api::Auditregistration::V1alpha1::Webhook, nilable: false, key: "webhook", getter: false, setter: false},
    }, true)

    def initialize(*, @policy : Api::Auditregistration::V1alpha1::Policy, @webhook : Api::Auditregistration::V1alpha1::Webhook)
    end
  end
end
