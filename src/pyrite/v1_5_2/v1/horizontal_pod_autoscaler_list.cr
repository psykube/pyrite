# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # list of horizontal pod autoscaler objects.
  class Definitions::V1::HorizontalPodAutoscalerList
    # list of horizontal pod autoscaler objects.
    property items : Array(V1::HorizontalPodAutoscaler)

    # Standard list metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1"
      @kind = "HorizontalPodAutoscalerList"
    end
  end

  module Resources::V1
    include Resource
    alias HorizontalPodAutoscalerList = Definitions::V1::HorizontalPodAutoscalerList
  end
end
