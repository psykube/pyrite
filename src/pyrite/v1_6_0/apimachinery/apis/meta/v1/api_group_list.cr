# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
class Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::APIGroupList
  # groups is a list of APIGroup.
  property groups : Array(::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::APIGroup)

  YAML.mapping({
    api_version: {type: String, default: "APIGroupList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    groups:      {type: Array(::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::APIGroup), nilable: false, key: groups, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "APIGroupList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    groups:      {type: Array(::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::APIGroup), nilable: false, key: groups, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @groups : Array? = nil, @kind : String? = nil)
    @api_version = "APIGroupList"
    @kind = "v1"
  end
end
