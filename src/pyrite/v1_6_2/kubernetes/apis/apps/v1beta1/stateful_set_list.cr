# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # StatefulSetList is a collection of StatefulSets.
  class Definitions::Kubernetes::Apis::Apps::V1beta1::StatefulSetList
    property items : Array(Kubernetes::Apis::Apps::V1beta1::StatefulSet)

    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Apps::V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Apps::V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "apps/v1beta1"
      @kind = "StatefulSetList"
    end
  end

  module Resources::Apps::V1beta1
    include Resource
    alias StatefulSetList = Definitions::Kubernetes::Apis::Apps::V1beta1::StatefulSetList
  end
end
