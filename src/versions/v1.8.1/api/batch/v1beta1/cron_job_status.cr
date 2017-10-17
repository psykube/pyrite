# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobStatus represents the current state of a cron job.
  class Api::Batch::V1beta1::CronJobStatus
    # A list of pointers to currently running jobs.
    property active : Array(Api::Core::V1::ObjectReference) | Nil

    # Information when was the last time the job was successfully scheduled.
    property last_schedule_time : Time | Nil

    YAML.mapping({
      active:             {type: Array(Api::Core::V1::ObjectReference), nilable: true, key: "active", getter: false, setter: false},
      last_schedule_time: {type: Time, nilable: true, key: "lastScheduleTime", getter: false, setter: false},
    }, true)

    JSON.mapping({
      active:             {type: Array(Api::Core::V1::ObjectReference), nilable: true, key: "active", getter: false, setter: false},
      last_schedule_time: {type: Time, nilable: true, key: "lastScheduleTime", getter: false, setter: false},
    }, true)

    def initialize(*, @active : Array | Nil = nil, @last_schedule_time : Time | Nil = nil)
    end
  end
end
