# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
  class Api::Rbac::V1::Subject < Kubernetes::Spec
    # APIGroup holds the API group of the referenced subject. Defaults to "" for ServiceAccount subjects. Defaults to "rbac.authorization.k8s.io" for User and Group subjects.
    @[::JSON::Field(key: "apiGroup")]
    @[::YAML::Field(key: "apiGroup")]
    property api_group : String | Nil

    # Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # Name of the object being referenced.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String | Nil

    def initialize(*, @api_group : String | Nil = nil, @kind : String, @name : String, @namespace : String | Nil = nil)
    end
  end
end
