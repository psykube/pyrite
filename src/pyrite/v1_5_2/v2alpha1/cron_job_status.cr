# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # CronJobStatus represents the current state of a cron job.
  class Definitions::V2alpha1::CronJobStatus
    # Active holds pointers to currently running jobs.
    property active : Array(V1::ObjectReference)?

    # LastScheduleTime keeps information of when was the last time the job was successfully scheduled.
    property last_schedule_time : Unversioned::Time

    YAML.mapping({active:             {type: Array(V1::ObjectReference), nilable: true, key: active, getter: false, setter: false},
                  last_schedule_time: {type: Unversioned::Time, nilable: true, key: lastScheduleTime, getter: false, setter: false}}, true)

    JSON.mapping({active:             {type: Array(V1::ObjectReference), nilable: true, key: active, getter: false, setter: false},
                  last_schedule_time: {type: Unversioned::Time, nilable: true, key: lastScheduleTime, getter: false, setter: false}}, true)

    def initialize(@active : Array? = nil, @last_schedule_time : Unversioned::Time = nil)
    end
  end
end
