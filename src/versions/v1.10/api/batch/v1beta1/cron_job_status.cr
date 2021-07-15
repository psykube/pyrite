# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobStatus represents the current state of a cron job.
  class Api::Batch::V1beta1::CronJobStatus < Kubernetes::Spec
    # A list of pointers to currently running jobs.
    @[::JSON::Field(key: "active")]
    @[::YAML::Field(key: "active")]
    property active : Array(Api::Core::V1::ObjectReference) | Nil

    # Information when was the last time the job was successfully scheduled.
    @[::JSON::Field(key: "lastScheduleTime")]
    @[::YAML::Field(key: "lastScheduleTime")]
    property last_schedule_time : Time | Nil

    def initialize(*, @active : Array | Nil = nil, @last_schedule_time : Time | Nil = nil)
    end
  end
end
