# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # OwnerReference contains enough information to let you identify an owning object. Currently, an owning object must be in the same namespace, so there is no namespace field.
  class Apimachinery::Apis::Meta::V1::OwnerReference
    # API version of the referent.
    property api_version : String

    # If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
    property block_owner_deletion : Bool | Nil

    # If true, this reference points to the managing controller.
    property controller : Bool | Nil

    # Kind of the referent. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    property kind : String

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    # UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    property uid : String

    YAML.mapping({
      api_version:          {type: String, nilable: false, key: "apiVersion"},
      block_owner_deletion: {type: Bool, nilable: true, key: "blockOwnerDeletion"},
      controller:           {type: Bool, nilable: true, key: "controller"},
      kind:                 {type: String, nilable: false, key: "kind"},
      name:                 {type: String, nilable: false, key: "name"},
      uid:                  {type: String, nilable: false, key: "uid"},
    }, true)

    JSON.mapping({
      api_version:          {type: String, nilable: false, key: "apiVersion"},
      block_owner_deletion: {type: Bool, nilable: true, key: "blockOwnerDeletion"},
      controller:           {type: Bool, nilable: true, key: "controller"},
      kind:                 {type: String, nilable: false, key: "kind"},
      name:                 {type: String, nilable: false, key: "name"},
      uid:                  {type: String, nilable: false, key: "uid"},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @block_owner_deletion : Bool | Nil = nil, @controller : Bool | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
