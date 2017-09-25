# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # UserInfo holds the information about the user needed to implement the user.Info interface.
  class Kubernetes::Apis::Authentication::V1beta1::UserInfo
    # Any additional information provided by the authenticator.
    property extra : Hash(String, String) | Nil

    # The names of groups this user is a part of.
    property groups : Array(String) | Nil

    # A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
    property uid : String | Nil

    # The name that uniquely identifies this user among all active users.
    property username : String | Nil

    YAML.mapping({
      extra:    {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:   {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      uid:      {type: String, nilable: true, key: "uid", getter: false, setter: false},
      username: {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    JSON.mapping({
      extra:    {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:   {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      uid:      {type: String, nilable: true, key: "uid", getter: false, setter: false},
      username: {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @uid : String | Nil = nil, @username : String | Nil = nil)
    end
  end
end
