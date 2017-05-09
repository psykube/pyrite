# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
  class Definitions::Unversioned::APIGroupList
    # groups is a list of APIGroup.
    property groups : Array(Unversioned::APIGroup)

    YAML.mapping({
      api_version: {type: String, default: "APIGroupList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "unversioned", getter: false, setter: false},
      groups:      {type: Array(Unversioned::APIGroup), nilable: false, key: groups, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "APIGroupList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "unversioned", getter: false, setter: false},
      groups:      {type: Array(Unversioned::APIGroup), nilable: false, key: groups, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @groups : Array? = nil, @kind : String? = nil)
      @api_version = "unversioned"
      @kind = "APIGroupList"
    end
  end

  module Resources::Unversioned
    include Resource
    alias APIGroupList = Definitions::Unversioned::APIGroupList
  end
end
