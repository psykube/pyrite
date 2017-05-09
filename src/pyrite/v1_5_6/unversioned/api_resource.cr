# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # APIResource specifies the name of a resource and whether it is namespaced.
  class Definitions::Unversioned::APIResource
    # kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    property kind : String

    # name is the name of the resource.
    property name : String

    # namespaced indicates if a resource is namespaced or not.
    property namespaced : Bool

    YAML.mapping({kind:       {type: String, nilable: false, key: kind, getter: false, setter: false},
                  name:       {type: String, nilable: false, key: name, getter: false, setter: false},
                  namespaced: {type: Bool, nilable: false, key: namespaced, getter: false, setter: false}}, true)

    JSON.mapping({kind:       {type: String, nilable: false, key: kind, getter: false, setter: false},
                  name:       {type: String, nilable: false, key: name, getter: false, setter: false},
                  namespaced: {type: Bool, nilable: false, key: namespaced, getter: false, setter: false}}, true)

    def initialize(@kind : String? = nil, @name : String? = nil, @namespaced : Bool? = nil)
    end
  end
end
