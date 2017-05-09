# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  class Definitions::V1beta1::SubjectAccessReviewSpec
    # Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    property extra : Hash(String, String)?

    # Groups is the groups you're testing for.
    property group : Array(String)?

    # NonResourceAttributes describes information for a non-resource access request
    property non_resource_attributes : V1beta1::NonResourceAttributes

    # ResourceAuthorizationAttributes describes information for a resource access request
    property resource_attributes : V1beta1::ResourceAttributes

    # User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
    property user : String?

    YAML.mapping({extra:                   {type: Hash(String, String), nilable: true, key: extra, getter: false, setter: false},
                  group:                   {type: Array(String), nilable: true, key: group, getter: false, setter: false},
                  non_resource_attributes: {type: V1beta1::NonResourceAttributes, nilable: true, key: nonResourceAttributes, getter: false, setter: false},
                  resource_attributes:     {type: V1beta1::ResourceAttributes, nilable: true, key: resourceAttributes, getter: false, setter: false},
                  user:                    {type: String, nilable: true, key: user, getter: false, setter: false}}, true)

    JSON.mapping({extra:                   {type: Hash(String, String), nilable: true, key: extra, getter: false, setter: false},
                  group:                   {type: Array(String), nilable: true, key: group, getter: false, setter: false},
                  non_resource_attributes: {type: V1beta1::NonResourceAttributes, nilable: true, key: nonResourceAttributes, getter: false, setter: false},
                  resource_attributes:     {type: V1beta1::ResourceAttributes, nilable: true, key: resourceAttributes, getter: false, setter: false},
                  user:                    {type: String, nilable: true, key: user, getter: false, setter: false}}, true)

    def initialize(@extra : Hash(String, String)? = nil, @group : Array? = nil, @non_resource_attributes : V1beta1::NonResourceAttributes = nil, @resource_attributes : V1beta1::ResourceAttributes = nil, @user : String? = nil)
    end
  end
end
