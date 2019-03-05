# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AuditSink represents a cluster level audit sink
  class Api::Auditregistration::V1alpha1::AuditSink
    getter api_version : String = "auditregistration/v1alpha1"
    getter kind : String = "AuditSink"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the audit configuration spec
    property spec : Api::Auditregistration::V1alpha1::AuditSinkSpec | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "auditregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "AuditSink", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Auditregistration::V1alpha1::AuditSinkSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "auditregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "AuditSink", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Auditregistration::V1alpha1::AuditSinkSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Auditregistration::V1alpha1::AuditSinkSpec | Nil = nil)
    end
  end

  module Resources::Auditregistration::V1alpha1
    alias AuditSink = ::Pyrite::Api::Auditregistration::V1alpha1::AuditSink
  end
end
