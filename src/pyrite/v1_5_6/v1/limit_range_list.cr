# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # LimitRangeList is a list of LimitRange items.
  class Definitions::V1::LimitRangeList
    # Items is a list of LimitRange objects. More info: [http://releases.k8s.io/HEAD/docs/design/admission_control_limit_range.md](http://releases.k8s.io/HEAD/docs/design/admission_control_limit_range.md)
    property items : Array(V1::LimitRange)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "LimitRangeList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::LimitRange), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "LimitRangeList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::LimitRange), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1"
      @kind = "LimitRangeList"
    end
  end

  module Resources::V1
    include Resource
    alias LimitRangeList = Definitions::V1::LimitRangeList
  end
end
