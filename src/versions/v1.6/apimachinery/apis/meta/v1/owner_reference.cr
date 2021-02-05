# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # OwnerReference contains enough information to let you identify an owning object. Currently, an owning object must be in the same namespace, so there is no namespace field.
  class Apimachinery::Apis::Meta::V1::OwnerReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # API version of the referent.
    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    property api_version : String

    # If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
    @[JSON::Field(key: "blockOwnerDeletion")]
    @[YAML::Field(key: "blockOwnerDeletion")]
    property block_owner_deletion : Bool | Nil

    # If true, this reference points to the managing controller.
    @[JSON::Field(key: "controller")]
    @[YAML::Field(key: "controller")]
    property controller : Bool | Nil

    # Kind of the referent. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    @[JSON::Field(key: "uid")]
    @[YAML::Field(key: "uid")]
    property uid : String

    def initialize(*, @api_version : String, @block_owner_deletion : Bool | Nil = nil, @controller : Bool | Nil = nil, @kind : String, @name : String, @uid : String)
    end
  end
end
