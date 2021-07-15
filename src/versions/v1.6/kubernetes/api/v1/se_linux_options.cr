# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SELinuxOptions are the labels to be applied to the container
  class Kubernetes::Api::V1::SELinuxOptions < Kubernetes::Spec
    # Level is SELinux level label that applies to the container.
    @[::JSON::Field(key: "level")]
    @[::YAML::Field(key: "level")]
    property level : String | Nil

    # Role is a SELinux role label that applies to the container.
    @[::JSON::Field(key: "role")]
    @[::YAML::Field(key: "role")]
    property role : String | Nil

    # Type is a SELinux type label that applies to the container.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    # User is a SELinux user label that applies to the container.
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : String | Nil

    def initialize(*, @level : String | Nil = nil, @role : String | Nil = nil, @type : String | Nil = nil, @user : String | Nil = nil)
    end
  end
end
