# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
  class Api::Authorization::V1::ResourceAttributes < Kubernetes::Spec
    # Group is the API Group of the Resource.  "*" means all.
    @[::JSON::Field(key: "group")]
    @[::YAML::Field(key: "group")]
    property group : String | Nil

    # Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    # Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String | Nil

    # Resource is one of the existing resource types.  "*" means all.
    @[::JSON::Field(key: "resource")]
    @[::YAML::Field(key: "resource")]
    property resource : String | Nil

    # Subresource is one of the existing resource types.  "" means none.
    @[::JSON::Field(key: "subresource")]
    @[::YAML::Field(key: "subresource")]
    property subresource : String | Nil

    # Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    @[::JSON::Field(key: "verb")]
    @[::YAML::Field(key: "verb")]
    property verb : String | Nil

    # Version is the API Version of the Resource.  "*" means all.
    @[::JSON::Field(key: "version")]
    @[::YAML::Field(key: "version")]
    property version : String | Nil

    def initialize(*, @group : String | Nil = nil, @name : String | Nil = nil, @namespace : String | Nil = nil, @resource : String | Nil = nil, @subresource : String | Nil = nil, @verb : String | Nil = nil, @version : String | Nil = nil)
    end
  end
end
