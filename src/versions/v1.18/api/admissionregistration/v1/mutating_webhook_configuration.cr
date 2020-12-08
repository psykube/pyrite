# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object.
  class Api::Admissionregistration::V1::MutatingWebhookConfiguration
    getter api_version : String = "admissionregistration/v1"
    getter kind : String = "MutatingWebhookConfiguration"
    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Webhooks is a list of webhooks and the affected resources and operations.
    property webhooks : Array(Api::Admissionregistration::V1::MutatingWebhook) | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "admissionregistration/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "MutatingWebhookConfiguration", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      webhooks:    {type: Array(Api::Admissionregistration::V1::MutatingWebhook), nilable: true, key: "webhooks", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "admissionregistration/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "MutatingWebhookConfiguration", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      webhooks:    {type: Array(Api::Admissionregistration::V1::MutatingWebhook), nilable: true, key: "webhooks", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @webhooks : Array | Nil = nil)
    end

    # create a MutatingWebhookConfiguration
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind MutatingWebhookConfiguration
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of MutatingWebhookConfiguration
    def self.delete(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified MutatingWebhookConfiguration
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified MutatingWebhookConfiguration
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified MutatingWebhookConfiguration
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a MutatingWebhookConfiguration
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1
    alias MutatingWebhookConfiguration = ::Pyrite::Api::Admissionregistration::V1::MutatingWebhookConfiguration
  end
end
