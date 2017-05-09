# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # CrossVersionObjectReference contains enough information to let you identify the referred resource.
  class Definitions::V1::CrossVersionObjectReference
    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    YAML.mapping({
      api_version: {type: String, default: "CrossVersionObjectReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CrossVersionObjectReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @name : String? = nil)
      @api_version = "v1"
      @kind = "CrossVersionObjectReference"
    end
  end

  module Resources::V1
    include Resource
    alias CrossVersionObjectReference = Definitions::V1::CrossVersionObjectReference
  end
end
