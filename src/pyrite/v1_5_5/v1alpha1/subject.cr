# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
  class Definitions::V1alpha1::Subject
    # Name of the object being referenced.
    property name : String

    # Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
    property namespace : String?

    YAML.mapping({
      api_version: {type: String, default: "Subject", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
      namespace:   {type: String, nilable: true, key: namespace, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Subject", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
      namespace:   {type: String, nilable: true, key: namespace, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @name : String? = nil, @namespace : String? = nil)
      @api_version = "v1alpha1"
      @kind = "Subject"
    end
  end

  module Resources::V1alpha1
    include Resource
    alias Subject = Definitions::V1alpha1::Subject
  end
end
