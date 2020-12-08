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

    # create an AuditSink
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind AuditSink
    def self.list(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of AuditSink
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified AuditSink
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified AuditSink
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified AuditSink
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete an AuditSink
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end
  end

  module Resources::Auditregistration::V1alpha1
    alias AuditSink = ::Pyrite::Api::Auditregistration::V1alpha1::AuditSink
  end
end
