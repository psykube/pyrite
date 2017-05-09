# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace. Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions checking.
  class Definitions::Kubernetes::Apis::Authorization::V1::LocalSubjectAccessReview
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Spec holds information about the request being evaluated.  spec.namespace must be equal to the namespace you made the request against.  If empty, it is defaulted.
    property spec : Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus

    YAML.mapping({
      api_version: {type: String, default: "LocalSubjectAccessReview", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "LocalSubjectAccessReview", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec = nil, @status : Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus = nil)
      @api_version = "authorization/v1"
      @kind = "LocalSubjectAccessReview"
    end
  end

  module Resources::Authorization::V1
    include Resource
    alias LocalSubjectAccessReview = Definitions::Kubernetes::Apis::Authorization::V1::LocalSubjectAccessReview
  end
end
