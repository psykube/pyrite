# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and plugins to add new resource types to the API.  It consists of one or more Versions of the api.
  class Definitions::V1beta1::ThirdPartyResource
    # Description is the description of this object.
    property description : String?

    # Standard object metadata
    property metadata : V1::ObjectMeta

    # Versions are versions for this third party object
    property versions : Array(V1beta1::APIVersion)?

    YAML.mapping({description: {type: String, nilable: true, key: description, getter: false, setter: false},
                  metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  versions:    {type: Array(V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false}}, true)

    JSON.mapping({description: {type: String, nilable: true, key: description, getter: false, setter: false},
                  metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  versions:    {type: Array(V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false}}, true)

    def initialize(@description : String? = nil, @metadata : V1::ObjectMeta = nil, @versions : Array? = nil)
    end
  end
end
