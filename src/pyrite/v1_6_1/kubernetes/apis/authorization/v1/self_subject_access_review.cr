# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
class Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReview
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec holds information about the request being evaluated.  user and groups must be empty
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec

  # Status is filled in by the server and indicates whether the request is allowed or not
  property status : ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus

  YAML.mapping({
    api_version: {type: String, default: "SelfSubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "SelfSubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec = nil, @status : ::Pyrite::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus = nil)
    @api_version = "SelfSubjectAccessReview"
    @kind = "v1"
  end

  # create a SelfSubjectAccessReview
  def create(context : String? = nil)
  end
end
