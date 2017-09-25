# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  class Kubernetes::Api::V1::ContainerState
    # Details about a running container
    property running : Kubernetes::Api::V1::ContainerStateRunning | Nil

    # Details about a terminated container
    property terminated : Kubernetes::Api::V1::ContainerStateTerminated | Nil

    # Details about a waiting container
    property waiting : Kubernetes::Api::V1::ContainerStateWaiting | Nil

    YAML.mapping({
      running:    {type: Kubernetes::Api::V1::ContainerStateRunning, nilable: true, key: "running", getter: false, setter: false},
      terminated: {type: Kubernetes::Api::V1::ContainerStateTerminated, nilable: true, key: "terminated", getter: false, setter: false},
      waiting:    {type: Kubernetes::Api::V1::ContainerStateWaiting, nilable: true, key: "waiting", getter: false, setter: false},
    }, true)

    JSON.mapping({
      running:    {type: Kubernetes::Api::V1::ContainerStateRunning, nilable: true, key: "running", getter: false, setter: false},
      terminated: {type: Kubernetes::Api::V1::ContainerStateTerminated, nilable: true, key: "terminated", getter: false, setter: false},
      waiting:    {type: Kubernetes::Api::V1::ContainerStateWaiting, nilable: true, key: "waiting", getter: false, setter: false},
    }, true)

    def initialize(*, @running : Kubernetes::Api::V1::ContainerStateRunning | Nil = nil, @terminated : Kubernetes::Api::V1::ContainerStateTerminated | Nil = nil, @waiting : Kubernetes::Api::V1::ContainerStateWaiting | Nil = nil)
    end
  end
end
