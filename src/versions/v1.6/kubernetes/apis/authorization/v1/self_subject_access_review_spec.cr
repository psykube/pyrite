# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  class Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec < Kubernetes::Spec
    # NonResourceAttributes describes information for a non-resource access request
    @[::JSON::Field(key: "nonResourceAttributes")]
    @[::YAML::Field(key: "nonResourceAttributes")]
    property non_resource_attributes : Kubernetes::Apis::Authorization::V1::NonResourceAttributes | Nil

    # ResourceAuthorizationAttributes describes information for a resource access request
    @[::JSON::Field(key: "resourceAttributes")]
    @[::YAML::Field(key: "resourceAttributes")]
    property resource_attributes : Kubernetes::Apis::Authorization::V1::ResourceAttributes | Nil

    def initialize(*, @non_resource_attributes : Kubernetes::Apis::Authorization::V1::NonResourceAttributes | Nil = nil, @resource_attributes : Kubernetes::Apis::Authorization::V1::ResourceAttributes | Nil = nil)
    end
  end
end
