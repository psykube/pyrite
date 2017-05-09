# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # OwnerReference contains enough information to let you identify an owning object. Currently, an owning object must be in the same namespace, so there is no namespace field.
  class Definitions::V1::OwnerReference
    # If true, this reference points to the managing controller.
    property controller : Bool?

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    # UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    property uid : String

    YAML.mapping({
      api_version: {type: String, default: "OwnerReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      controller:  {type: Bool, nilable: true, key: controller, getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
      uid:         {type: String, nilable: false, key: uid, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "OwnerReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      controller:  {type: Bool, nilable: true, key: controller, getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
      uid:         {type: String, nilable: false, key: uid, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @controller : Bool? = nil, @kind : String? = nil, @name : String? = nil, @uid : String? = nil)
      @api_version = "v1"
      @kind = "OwnerReference"
    end
  end

  module Resources::V1
    include Resource
    alias OwnerReference = Definitions::V1::OwnerReference
  end
end
