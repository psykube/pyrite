# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # SubresourceReference contains enough information to let you inspect or modify the referred subresource.
  class Definitions::V1beta1::SubresourceReference
    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String?

    # Subresource name of the referent
    property subresource : String?

    YAML.mapping({
      api_version: {type: String, default: "SubresourceReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      name:        {type: String, nilable: true, key: name, getter: false, setter: false},
      subresource: {type: String, nilable: true, key: subresource, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "SubresourceReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      name:        {type: String, nilable: true, key: name, getter: false, setter: false},
      subresource: {type: String, nilable: true, key: subresource, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @name : String? = nil, @subresource : String? = nil)
      @api_version = "v1beta1"
      @kind = "SubresourceReference"
    end
  end

  module Resources::V1beta1
    include Resource
    alias SubresourceReference = Definitions::V1beta1::SubresourceReference
  end
end
