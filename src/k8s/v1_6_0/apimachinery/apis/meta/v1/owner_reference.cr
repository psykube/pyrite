require "yaml"
require "json"

# OwnerReference contains enough information to let you identify an owning object.Currently, an owning object must be in the same namespace, so there is no namespace field.
class K8S::V1_6_0::Apimachinery::Apis::Meta::V1::OwnerReference
  # If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed.Defaults to false.To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  property block_owner_deletion : Bool?

  # If true, this reference points to the managing controller.
  property controller : Bool?

  # Name of the referent.More info: http://kubernetes.io/docs/user-guide/identifiers#names
  property name : String

  # UID of the referent.More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  property uid : String

  YAML.mapping({
    api_version:          {type: String, default: "OwnerReference", key: apiVersion, getter: false, setter: false},
    kind:                 {type: String, default: "v1", getter: false, setter: false},
    block_owner_deletion: {type: Bool, nilable: true, key: blockOwnerDeletion, getter: false, setter: false},
    controller:           {type: Bool, nilable: true, key: controller, getter: false, setter: false},
    name:                 {type: String, nilable: false, key: name, getter: false, setter: false},
    uid:                  {type: String, nilable: false, key: uid, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version:          {type: String, default: "OwnerReference", key: apiVersion, getter: false, setter: false},
    kind:                 {type: String, default: "v1", getter: false, setter: false},
    block_owner_deletion: {type: Bool, nilable: true, key: blockOwnerDeletion, getter: false, setter: false},
    controller:           {type: Bool, nilable: true, key: controller, getter: false, setter: false},
    name:                 {type: String, nilable: false, key: name, getter: false, setter: false},
    uid:                  {type: String, nilable: false, key: uid, getter: false, setter: false},
  }, true)

  def initialize(@name, @uid, @block_owner_deletion = nil, @controller = nil)
    @api_version = "OwnerReference"
    @kind = "v1"
  end
end
