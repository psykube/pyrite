# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
  class Api::Rbac::V1beta1::Subject
    # APIGroup holds the API group of the referenced subject. Defaults to "" for ServiceAccount subjects. Defaults to "rbac.authorization.k8s.io" for User and Group subjects.
    property api_group : String | Nil

    # Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
    property kind : String

    # Name of the object being referenced.
    property name : String

    # Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
    property namespace : String | Nil

    ::YAML.mapping({
      api_group: {type: String, nilable: true, key: "apiGroup", getter: false, setter: false},
      kind:      {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_group: {type: String, nilable: true, key: "apiGroup", getter: false, setter: false},
      kind:      {type: String, nilable: false, key: "kind", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @api_group : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
