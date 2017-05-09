# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Specification of the desired behavior for this NetworkPolicy.
    property spec : Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec

    YAML.mapping({
      api_version: {type: String, default: "NetworkPolicy", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "NetworkPolicy", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec = nil)
      @api_version = "extensions/v1beta1"
      @kind = "NetworkPolicy"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias NetworkPolicy = Definitions::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy
  end
end
