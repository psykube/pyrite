# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # InitializerConfiguration describes the configuration of initializers.
  class Api::Admissionregistration::V1alpha1::InitializerConfiguration
    getter api_version : String = "admissionregistration/v1alpha1"
    getter kind : String = "InitializerConfiguration"
    # Initializers is a list of resources and their default initializers Order-sensitive. When merging multiple InitializerConfigurations, we sort the initializers from different InitializerConfigurations by the name of the InitializerConfigurations; the order of the initializers from the same InitializerConfiguration is preserved.
    property initializers : Array(Api::Admissionregistration::V1alpha1::Initializer) | Nil

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    ::YAML.mapping({
      api_version:  {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:         {type: String, default: "InitializerConfiguration", key: "kind", setter: false},
      initializers: {type: Array(Api::Admissionregistration::V1alpha1::Initializer), nilable: true, key: "initializers", getter: false, setter: false},
      metadata:     {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:  {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:         {type: String, default: "InitializerConfiguration", key: "kind", setter: false},
      initializers: {type: Array(Api::Admissionregistration::V1alpha1::Initializer), nilable: true, key: "initializers", getter: false, setter: false},
      metadata:     {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @initializers : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end

    # create an InitializerConfiguration
    def create(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, dry_run : String | Nil = nil)
    end

    # list or watch objects of kind InitializerConfiguration
    def self.list(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of InitializerConfiguration
    def self.delete(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified InitializerConfiguration
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified InitializerConfiguration
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update the specified InitializerConfiguration
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # delete an InitializerConfiguration
    def delete(api_version : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1alpha1
    alias InitializerConfiguration = ::Pyrite::Api::Admissionregistration::V1alpha1::InitializerConfiguration
  end
end
