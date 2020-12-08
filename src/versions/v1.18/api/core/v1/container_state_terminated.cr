# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerStateTerminated is a terminated state of a container.
  class Api::Core::V1::ContainerStateTerminated
    # Container's ID in the format 'docker://<container_id>'
    property container_id : String | Nil

    # Exit status from the last termination of the container
    property exit_code : Int32

    # Time at which the container last terminated
    property finished_at : Time | Nil

    # Message regarding the last termination of the container
    property message : String | Nil

    # (brief) reason from the last termination of the container
    property reason : String | Nil

    # Signal from the last termination of the container
    property signal : Int32 | Nil

    # Time at which previous execution of the container started
    property started_at : Time | Nil

    ::YAML.mapping({
      container_id: {type: String, nilable: true, key: "containerID", getter: false, setter: false},
      exit_code:    {type: Int32, nilable: false, key: "exitCode", getter: false, setter: false},
      finished_at:  {type: Time, nilable: true, key: "finishedAt", getter: false, setter: false},
      message:      {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:       {type: String, nilable: true, key: "reason", getter: false, setter: false},
      signal:       {type: Int32, nilable: true, key: "signal", getter: false, setter: false},
      started_at:   {type: Time, nilable: true, key: "startedAt", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      container_id: {type: String, nilable: true, key: "containerID", getter: false, setter: false},
      exit_code:    {type: Int32, nilable: false, key: "exitCode", getter: false, setter: false},
      finished_at:  {type: Time, nilable: true, key: "finishedAt", getter: false, setter: false},
      message:      {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:       {type: String, nilable: true, key: "reason", getter: false, setter: false},
      signal:       {type: Int32, nilable: true, key: "signal", getter: false, setter: false},
      started_at:   {type: Time, nilable: true, key: "startedAt", getter: false, setter: false},
    }, true)

    def initialize(*, @exit_code : Int32, @container_id : String | Nil = nil, @finished_at : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @signal : Int32 | Nil = nil, @started_at : Time | Nil = nil)
    end
  end
end
