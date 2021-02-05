# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  class Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    @[::JSON::Field(key: "extra")]
    @[::YAML::Field(key: "extra")]
    property extra : Hash(String, String) | Nil

    # Groups is the groups you're testing for.
    @[::JSON::Field(key: "group")]
    @[::YAML::Field(key: "group")]
    property group : Array(String) | Nil

    # NonResourceAttributes describes information for a non-resource access request
    @[::JSON::Field(key: "nonResourceAttributes")]
    @[::YAML::Field(key: "nonResourceAttributes")]
    property non_resource_attributes : Kubernetes::Apis::Authorization::V1beta1::NonResourceAttributes | Nil

    # ResourceAuthorizationAttributes describes information for a resource access request
    @[::JSON::Field(key: "resourceAttributes")]
    @[::YAML::Field(key: "resourceAttributes")]
    property resource_attributes : Kubernetes::Apis::Authorization::V1beta1::ResourceAttributes | Nil

    # User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : String | Nil

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @group : Array | Nil = nil, @non_resource_attributes : Kubernetes::Apis::Authorization::V1beta1::NonResourceAttributes | Nil = nil, @resource_attributes : Kubernetes::Apis::Authorization::V1beta1::ResourceAttributes | Nil = nil, @user : String | Nil = nil)
    end
  end
end
