# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerStatus contains details for the current status of this container.
  class Kubernetes::Api::V1::ContainerStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Container's ID in the format 'docker://<container_id>'.
    @[::JSON::Field(key: "containerID")]
    @[::YAML::Field(key: "containerID")]
    property container_id : String | Nil

    # The image the container is running. More info: [https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)
    @[::JSON::Field(key: "image")]
    @[::YAML::Field(key: "image")]
    property image : String

    # ImageID of the container's image.
    @[::JSON::Field(key: "imageID")]
    @[::YAML::Field(key: "imageID")]
    property image_id : String

    # Details about the container's last termination condition.
    @[::JSON::Field(key: "lastState")]
    @[::YAML::Field(key: "lastState")]
    property last_state : Kubernetes::Api::V1::ContainerState | Nil

    # This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Specifies whether the container has passed its readiness probe.
    @[::JSON::Field(key: "ready")]
    @[::YAML::Field(key: "ready")]
    property ready : Bool

    # The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.
    @[::JSON::Field(key: "restartCount")]
    @[::YAML::Field(key: "restartCount")]
    property restart_count : Int32

    # Details about the container's current condition.
    @[::JSON::Field(key: "state")]
    @[::YAML::Field(key: "state")]
    property state : Kubernetes::Api::V1::ContainerState | Nil

    def initialize(*, @container_id : String | Nil = nil, @image : String, @image_id : String, @last_state : Kubernetes::Api::V1::ContainerState | Nil = nil, @name : String, @ready : Bool, @restart_count : Int32, @state : Kubernetes::Api::V1::ContainerState | Nil = nil)
    end
  end
end
