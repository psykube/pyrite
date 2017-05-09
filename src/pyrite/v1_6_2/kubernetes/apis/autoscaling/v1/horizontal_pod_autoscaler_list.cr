# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # list of horizontal pod autoscaler objects.
  class Definitions::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerList
    # list of horizontal pod autoscaler objects.
    property items : Array(Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler)

    # Standard list metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "autoscaling/v1"
      @kind = "HorizontalPodAutoscalerList"
    end
  end

  module Resources::Autoscaling::V1
    include Resource
    alias HorizontalPodAutoscalerList = Definitions::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerList
  end
end
