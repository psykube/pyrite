# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
  class Definitions::Unversioned::APIGroupList
    # groups is a list of APIGroup.
    property groups : Array(Unversioned::APIGroup)

    YAML.mapping({groups: {type: Array(Unversioned::APIGroup), nilable: false, key: groups, getter: false, setter: false}}, true)

    JSON.mapping({groups: {type: Array(Unversioned::APIGroup), nilable: false, key: groups, getter: false, setter: false}}, true)

    def initialize(@groups : Array? = nil)
    end
  end
end
