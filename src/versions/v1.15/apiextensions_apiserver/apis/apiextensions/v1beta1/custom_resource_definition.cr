# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition
    getter api_version : String = "apiextensions/v1beta1"
    getter kind : String = "CustomResourceDefinition"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec describes how the user wants the resources to appear
    property spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec

    # Status indicates the actual state of the CustomResourceDefinition
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apiextensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CustomResourceDefinition", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apiextensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CustomResourceDefinition", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil = nil)
    end

    # create a CustomResourceDefinition
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind CustomResourceDefinition
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of CustomResourceDefinition
    def self.delete(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified CustomResourceDefinition
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified CustomResourceDefinition
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified CustomResourceDefinition
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a CustomResourceDefinition
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end

    # read status of the specified CustomResourceDefinition
    def self.read_status(name : String, context : String | Nil = nil)
    end

    # replace status of the specified CustomResourceDefinition
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update status of the specified CustomResourceDefinition
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end
  end

  module Resources::Apiextensions::V1beta1
    alias CustomResourceDefinition = ::Pyrite::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition
  end
end
