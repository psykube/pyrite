# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  class Api::Authorization::V1::SubjectAccessReviewSpec < Kubernetes::Spec
    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    @[::JSON::Field(key: "extra")]
    @[::YAML::Field(key: "extra")]
    property extra : Hash(String, String) | Nil

    # Groups is the groups you're testing for.
    @[::JSON::Field(key: "groups")]
    @[::YAML::Field(key: "groups")]
    property groups : Array(String) | Nil

    # NonResourceAttributes describes information for a non-resource access request
    @[::JSON::Field(key: "nonResourceAttributes")]
    @[::YAML::Field(key: "nonResourceAttributes")]
    property non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil

    # ResourceAuthorizationAttributes describes information for a resource access request
    @[::JSON::Field(key: "resourceAttributes")]
    @[::YAML::Field(key: "resourceAttributes")]
    property resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil

    # UID information about the requesting user.
    @[::JSON::Field(key: "uid")]
    @[::YAML::Field(key: "uid")]
    property uid : String | Nil

    # User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : String | Nil

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @non_resource_attributes : Api::Authorization::V1::NonResourceAttributes | Nil = nil, @resource_attributes : Api::Authorization::V1::ResourceAttributes | Nil = nil, @uid : String | Nil = nil, @user : String | Nil = nil)
    end
  end
end
