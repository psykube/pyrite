# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # Pod Security Policy List is a list of PodSecurityPolicy objects.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicyList
    # Items is a list of schema objects.
    property items : Array(Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "PodSecurityPolicyList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "PodSecurityPolicyList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "extensions/v1beta1"
      @kind = "PodSecurityPolicyList"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias PodSecurityPolicyList = Definitions::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicyList
  end
end
