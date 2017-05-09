# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # ThirdPartyResourceList is a list of ThirdPartyResources.
  class Definitions::V1beta1::ThirdPartyResourceList
    # Items is the list of ThirdPartyResources.
    property items : Array(V1beta1::ThirdPartyResource)

    # Standard list metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1beta1"
      @kind = "ThirdPartyResourceList"
    end
  end

  module Resources::V1beta1
    include Resource
    alias ThirdPartyResourceList = Definitions::V1beta1::ThirdPartyResourceList
  end
end
