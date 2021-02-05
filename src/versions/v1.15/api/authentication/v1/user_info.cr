# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # UserInfo holds the information about the user needed to implement the user.Info interface.
  class Api::Authentication::V1::UserInfo
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Any additional information provided by the authenticator.
    @[JSON::Field(key: "extra")]
    @[YAML::Field(key: "extra")]
    property extra : Hash(String, String) | Nil

    # The names of groups this user is a part of.
    @[JSON::Field(key: "groups")]
    @[YAML::Field(key: "groups")]
    property groups : Array(String) | Nil

    # A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
    @[JSON::Field(key: "uid")]
    @[YAML::Field(key: "uid")]
    property uid : String | Nil

    # The name that uniquely identifies this user among all active users.
    @[JSON::Field(key: "username")]
    @[YAML::Field(key: "username")]
    property username : String | Nil

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @uid : String | Nil = nil, @username : String | Nil = nil)
    end
  end
end
