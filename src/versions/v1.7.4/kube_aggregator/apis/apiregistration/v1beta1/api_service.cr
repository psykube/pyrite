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
  end

  module Resources::Apiregistration::V1beta1
    alias APIService = ::Pyrite::KubeAggregator::Apis::Apiregistration::V1beta1::APIService
  end
end
