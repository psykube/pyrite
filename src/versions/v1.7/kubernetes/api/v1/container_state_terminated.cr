# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerStateTerminated is a terminated state of a container.
  class Kubernetes::Api::V1::ContainerStateTerminated
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Container's ID in the format 'docker://<container_id>'
    @[JSON::Field(key: "containerID")]
    @[YAML::Field(key: "containerID")]
    property container_id : String | Nil

    # Exit status from the last termination of the container
    @[JSON::Field(key: "exitCode")]
    @[YAML::Field(key: "exitCode")]
    property exit_code : Int32

    # Time at which the container last terminated
    @[JSON::Field(key: "finishedAt")]
    @[YAML::Field(key: "finishedAt")]
    property finished_at : Time | Nil

    # Message regarding the last termination of the container
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # (brief) reason from the last termination of the container
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String | Nil

    # Signal from the last termination of the container
    @[JSON::Field(key: "signal")]
    @[YAML::Field(key: "signal")]
    property signal : Int32 | Nil

    # Time at which previous execution of the container started
    @[JSON::Field(key: "startedAt")]
    @[YAML::Field(key: "startedAt")]
    property started_at : Time | Nil

    def initialize(*, @container_id : String | Nil = nil, @exit_code : Int32, @finished_at : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @signal : Int32 | Nil = nil, @started_at : Time | Nil = nil)
    end
  end
end
