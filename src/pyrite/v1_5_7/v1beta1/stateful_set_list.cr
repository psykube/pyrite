# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # StatefulSetList is a collection of StatefulSets.
  class Definitions::V1beta1::StatefulSetList
    property items : Array(V1beta1::StatefulSet)

    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1beta1"
      @kind = "StatefulSetList"
    end
  end

  module Resources::V1beta1
    include Resource
    alias StatefulSetList = Definitions::V1beta1::StatefulSetList
  end
end
