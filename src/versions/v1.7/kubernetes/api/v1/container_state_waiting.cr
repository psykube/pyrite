# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerStateWaiting is a waiting state of a container.
  class Kubernetes::Api::V1::ContainerStateWaiting
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Message regarding why the container is not yet running.
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # (brief) reason the container is not yet running.
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String | Nil

    def initialize(*, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
