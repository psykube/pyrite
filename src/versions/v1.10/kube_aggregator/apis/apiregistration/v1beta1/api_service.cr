# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIService represents a server for a particular GroupVersion. Name must be "version.group".
  class KubeAggregator::Apis::Apiregistration::V1beta1::APIService
    getter api_version : String = "apiregistration/v1beta1"
    getter kind : String = "APIService"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec contains information for locating and communicating with a server
    property spec : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec | Nil

    # Status contains derived information about an API server
    property status : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apiregistration/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "APIService", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apiregistration/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "APIService", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceSpec | Nil = nil, @status : KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus | Nil = nil)
    end

    # create an APIService
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind APIService
    def self.list(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of APIService
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified APIService
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified APIService
    def replace(context : String | Nil = nil)
    end

    # partially update the specified APIService
    def patch(context : String | Nil = nil)
    end

    # delete an APIService
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # replace status of the specified APIService
    def replace_status(context : String | Nil = nil)
    end
  end

  module Resources::Apiregistration::V1beta1
    alias APIService = ::Pyrite::KubeAggregator::Apis::Apiregistration::V1beta1::APIService
  end
end
