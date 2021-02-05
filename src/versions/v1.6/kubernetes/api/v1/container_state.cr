# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  class Kubernetes::Api::V1::ContainerState
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Details about a running container
    @[JSON::Field(key: "running")]
    @[YAML::Field(key: "running")]
    property running : Kubernetes::Api::V1::ContainerStateRunning | Nil

    # Details about a terminated container
    @[JSON::Field(key: "terminated")]
    @[YAML::Field(key: "terminated")]
    property terminated : Kubernetes::Api::V1::ContainerStateTerminated | Nil

    # Details about a waiting container
    @[JSON::Field(key: "waiting")]
    @[YAML::Field(key: "waiting")]
    property waiting : Kubernetes::Api::V1::ContainerStateWaiting | Nil

    def initialize(*, @running : Kubernetes::Api::V1::ContainerStateRunning | Nil = nil, @terminated : Kubernetes::Api::V1::ContainerStateTerminated | Nil = nil, @waiting : Kubernetes::Api::V1::ContainerStateWaiting | Nil = nil)
    end
  end
end
