# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SELinuxOptions are the labels to be applied to the container
  class Kubernetes::Api::V1::SELinuxOptions
    # Level is SELinux level label that applies to the container.
    property level : String | Nil

    # Role is a SELinux role label that applies to the container.
    property role : String | Nil

    # Type is a SELinux type label that applies to the container.
    property type : String | Nil

    # User is a SELinux user label that applies to the container.
    property user : String | Nil

    YAML.mapping({
      level: {type: String, nilable: true, key: "level"},
      role:  {type: String, nilable: true, key: "role"},
      type:  {type: String, nilable: true, key: "type"},
      user:  {type: String, nilable: true, key: "user"},
    }, true)

    JSON.mapping({
      level: {type: String, nilable: true, key: "level"},
      role:  {type: String, nilable: true, key: "role"},
      type:  {type: String, nilable: true, key: "type"},
      user:  {type: String, nilable: true, key: "user"},
    }, true)

    def initialize(*, @level : String | Nil = nil, @role : String | Nil = nil, @type : String | Nil = nil, @user : String | Nil = nil)
    end
  end
end
