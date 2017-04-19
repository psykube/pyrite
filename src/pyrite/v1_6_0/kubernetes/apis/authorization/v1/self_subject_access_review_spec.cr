# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec
  # NonResourceAttributes describes information for a non-resource access request
  property non_resource_attributes : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::NonResourceAttributes

  # ResourceAuthorizationAttributes describes information for a resource access request
  property resource_attributes : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::ResourceAttributes

  YAML.mapping({non_resource_attributes: {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::NonResourceAttributes, nilable: true, key: nonResourceAttributes, getter: false, setter: false},
                resource_attributes:     {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::ResourceAttributes, nilable: true, key: resourceAttributes, getter: false, setter: false}}, true)

  JSON.mapping({non_resource_attributes: {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::NonResourceAttributes, nilable: true, key: nonResourceAttributes, getter: false, setter: false},
                resource_attributes:     {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::ResourceAttributes, nilable: true, key: resourceAttributes, getter: false, setter: false}}, true)

  def initialize(@non_resource_attributes : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::NonResourceAttributes = nil, @resource_attributes : ::Pyrite::V1_6_0::Kubernetes::Apis::Authorization::V1::ResourceAttributes = nil)
  end
end
