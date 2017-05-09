# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
  class Definitions::Kubernetes::Apis::Authorization::V1::ResourceAttributes
    # Group is the API Group of the Resource.  "*" means all.
    property group : String?

    # Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
    property name : String?

    # Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    property namespace : String?

    # Resource is one of the existing resource types.  "*" means all.
    property resource : String?

    # Subresource is one of the existing resource types.  "" means none.
    property subresource : String?

    # Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    property verb : String?

    # Version is the API Version of the Resource.  "*" means all.
    property version : String?

    YAML.mapping({group:       {type: String, nilable: true, key: group, getter: false, setter: false},
                  name:        {type: String, nilable: true, key: name, getter: false, setter: false},
                  namespace:   {type: String, nilable: true, key: namespace, getter: false, setter: false},
                  resource:    {type: String, nilable: true, key: resource, getter: false, setter: false},
                  subresource: {type: String, nilable: true, key: subresource, getter: false, setter: false},
                  verb:        {type: String, nilable: true, key: verb, getter: false, setter: false},
                  version:     {type: String, nilable: true, key: version, getter: false, setter: false}}, true)

    JSON.mapping({group:       {type: String, nilable: true, key: group, getter: false, setter: false},
                  name:        {type: String, nilable: true, key: name, getter: false, setter: false},
                  namespace:   {type: String, nilable: true, key: namespace, getter: false, setter: false},
                  resource:    {type: String, nilable: true, key: resource, getter: false, setter: false},
                  subresource: {type: String, nilable: true, key: subresource, getter: false, setter: false},
                  verb:        {type: String, nilable: true, key: verb, getter: false, setter: false},
                  version:     {type: String, nilable: true, key: version, getter: false, setter: false}}, true)

    def initialize(@group : String? = nil, @name : String? = nil, @namespace : String? = nil, @resource : String? = nil, @subresource : String? = nil, @verb : String? = nil, @version : String? = nil)
    end
  end
end
