# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
  class Definitions::Unversioned::APIResourceList
    # groupVersion is the group and version this APIResourceList is for.
    property group_version : String

    # resources contains the name of the resources and if they are namespaced.
    property resources : Array(Unversioned::APIResource)

    YAML.mapping({group_version: {type: String, nilable: false, key: groupVersion, getter: false, setter: false},
                  resources:     {type: Array(Unversioned::APIResource), nilable: false, key: resources, getter: false, setter: false}}, true)

    JSON.mapping({group_version: {type: String, nilable: false, key: groupVersion, getter: false, setter: false},
                  resources:     {type: Array(Unversioned::APIResource), nilable: false, key: resources, getter: false, setter: false}}, true)

    def initialize(@group_version : String? = nil, @resources : Array? = nil)
    end
  end
end
