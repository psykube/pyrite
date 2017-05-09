# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # SubjectAccessReview checks whether or not a user or group can perform an action.
  class Definitions::V1beta1::SubjectAccessReview
    property metadata : V1::ObjectMeta

    # Spec holds information about the request being evaluated
    property spec : V1beta1::SubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : V1beta1::SubjectAccessReviewStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1beta1::SubjectAccessReviewSpec = nil, @status : V1beta1::SubjectAccessReviewStatus = nil)
    end
  end
end
