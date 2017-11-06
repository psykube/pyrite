# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobStatus represents the current state of a cron job.
  class Kubernetes::Apis::Batch::V2alpha1::CronJobStatus
    # Active holds pointers to currently running jobs.
    property active : Array(Kubernetes::Api::V1::ObjectReference) | Nil

    # LastScheduleTime keeps information of when was the last time the job was successfully scheduled.
    property last_schedule_time : Time | Nil

    YAML.mapping({
      active:             {type: Array(Kubernetes::Api::V1::ObjectReference), nilable: true, key: "active", getter: false, setter: false},
      last_schedule_time: {type: Time, nilable: true, key: "lastScheduleTime", getter: false, setter: false},
    }, true)

    JSON.mapping({
      active:             {type: Array(Kubernetes::Api::V1::ObjectReference), nilable: true, key: "active", getter: false, setter: false},
      last_schedule_time: {type: Time, nilable: true, key: "lastScheduleTime", getter: false, setter: false},
    }, true)

    def initialize(*, @active : Array | Nil = nil, @last_schedule_time : Time | Nil = nil)
    end
  end
end
