# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AuditSinkSpec holds the spec for the audit sink
  class Api::Auditregistration::V1alpha1::AuditSinkSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Policy defines the policy for selecting which events should be sent to the webhook required
    @[::JSON::Field(key: "policy")]
    @[::YAML::Field(key: "policy")]
    property policy : Api::Auditregistration::V1alpha1::Policy

    # Webhook to send events required
    @[::JSON::Field(key: "webhook")]
    @[::YAML::Field(key: "webhook")]
    property webhook : Api::Auditregistration::V1alpha1::Webhook

    def initialize(*, @policy : Api::Auditregistration::V1alpha1::Policy, @webhook : Api::Auditregistration::V1alpha1::Webhook)
    end
  end
end
