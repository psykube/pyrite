# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  class Api::Core::V1::ContainerState
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Details about a running container
    @[JSON::Field(key: "running")]
    @[YAML::Field(key: "running")]
    property running : Api::Core::V1::ContainerStateRunning | Nil

    # Details about a terminated container
    @[JSON::Field(key: "terminated")]
    @[YAML::Field(key: "terminated")]
    property terminated : Api::Core::V1::ContainerStateTerminated | Nil

    # Details about a waiting container
    @[JSON::Field(key: "waiting")]
    @[YAML::Field(key: "waiting")]
    property waiting : Api::Core::V1::ContainerStateWaiting | Nil

    def initialize(*, @running : Api::Core::V1::ContainerStateRunning | Nil = nil, @terminated : Api::Core::V1::ContainerStateTerminated | Nil = nil, @waiting : Api::Core::V1::ContainerStateWaiting | Nil = nil)
    end
  end
end
