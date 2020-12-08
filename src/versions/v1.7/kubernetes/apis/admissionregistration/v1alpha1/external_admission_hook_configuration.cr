# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalAdmissionHookConfiguration describes the configuration of initializers.
  class Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration
    getter api_version : String = "admissionregistration/v1alpha1"
    getter kind : String = "ExternalAdmissionHookConfiguration"
    # ExternalAdmissionHooks is a list of external admission webhooks and the affected resources and operations.
    property external_admission_hooks : Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook) | Nil

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    ::YAML.mapping({
      api_version:              {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:                     {type: String, default: "ExternalAdmissionHookConfiguration", key: "kind", setter: false},
      external_admission_hooks: {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook), nilable: true, key: "externalAdmissionHooks", getter: false, setter: false},
      metadata:                 {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:              {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:                     {type: String, default: "ExternalAdmissionHookConfiguration", key: "kind", setter: false},
      external_admission_hooks: {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook), nilable: true, key: "externalAdmissionHooks", getter: false, setter: false},
      metadata:                 {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @external_admission_hooks : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end

    # create an ExternalAdmissionHookConfiguration
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind ExternalAdmissionHookConfiguration
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of ExternalAdmissionHookConfiguration
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified ExternalAdmissionHookConfiguration
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified ExternalAdmissionHookConfiguration
    def replace(context : String | Nil = nil)
    end

    # partially update the specified ExternalAdmissionHookConfiguration
    def patch(context : String | Nil = nil)
    end

    # delete an ExternalAdmissionHookConfiguration
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1alpha1
    alias ExternalAdmissionHookConfiguration = ::Pyrite::Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration
  end
end
