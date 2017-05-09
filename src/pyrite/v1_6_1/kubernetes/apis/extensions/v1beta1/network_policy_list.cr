# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # Network Policy List is a list of NetworkPolicy objects.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyList
    # Items is a list of schema objects.
    property items : Array(Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "NetworkPolicyList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "NetworkPolicyList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "extensions/v1beta1"
      @kind = "NetworkPolicyList"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias NetworkPolicyList = Definitions::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyList
  end
end
