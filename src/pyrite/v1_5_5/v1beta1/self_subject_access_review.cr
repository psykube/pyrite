# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
  class Definitions::V1beta1::SelfSubjectAccessReview
    property metadata : V1::ObjectMeta

    # Spec holds information about the request being evaluated.  user and groups must be empty
    property spec : V1beta1::SelfSubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : V1beta1::SubjectAccessReviewStatus

    YAML.mapping({
      api_version: {type: String, default: "SelfSubjectAccessReview", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::SelfSubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "SelfSubjectAccessReview", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::SelfSubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::SelfSubjectAccessReviewSpec = nil, @status : V1beta1::SubjectAccessReviewStatus = nil)
      @api_version = "v1beta1"
      @kind = "SelfSubjectAccessReview"
    end
  end

  module Resources::V1beta1
    include Resource
    alias SelfSubjectAccessReview = Definitions::V1beta1::SelfSubjectAccessReview
  end
end
