# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobStatus represents the current state of a cron job.
  class Kubernetes::Apis::Batch::V2alpha1::CronJobStatus < Kubernetes::Spec
    # Active holds pointers to currently running jobs.
    @[::JSON::Field(key: "active")]
    @[::YAML::Field(key: "active")]
    property active : Array(Kubernetes::Api::V1::ObjectReference) | Nil

    # LastScheduleTime keeps information of when was the last time the job was successfully scheduled.
    @[::JSON::Field(key: "lastScheduleTime")]
    @[::YAML::Field(key: "lastScheduleTime")]
    property last_schedule_time : Time | Nil

    def initialize(*, @active : Array | Nil = nil, @last_schedule_time : Time | Nil = nil)
    end
  end
end
