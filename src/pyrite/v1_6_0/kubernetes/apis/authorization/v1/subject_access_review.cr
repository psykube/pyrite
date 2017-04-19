# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# SubjectAccessReview checks whether or not a user or group can perform an action.
class Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReview
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec holds information about the request being evaluated
  property spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec

  # Status is filled in by the server and indicates whether the request is allowed or not
  property status : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus

  YAML.mapping({
    api_version: {type: String, default: "SubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "SubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec = nil, @status : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus = nil)
    @api_version = "SubjectAccessReview"
    @kind = "v1"
  end

  # create a SubjectAccessReview
  def create(context : String? = nil)
  end
end
