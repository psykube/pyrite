# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
  class Definitions::Apimachinery::Apis::Meta::V1::APIGroupList
    # groups is a list of APIGroup.
    property groups : Array(Apimachinery::Apis::Meta::V1::APIGroup)

    YAML.mapping({
      api_version: {type: String, default: "APIGroupList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      groups:      {type: Array(Apimachinery::Apis::Meta::V1::APIGroup), nilable: false, key: groups, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "APIGroupList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      groups:      {type: Array(Apimachinery::Apis::Meta::V1::APIGroup), nilable: false, key: groups, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @groups : Array? = nil, @kind : String? = nil)
      @api_version = "meta/v1"
      @kind = "APIGroupList"
    end
  end

  module Resources::Meta::V1
    include Resource
    alias APIGroupList = Definitions::Apimachinery::Apis::Meta::V1::APIGroupList
  end
end
