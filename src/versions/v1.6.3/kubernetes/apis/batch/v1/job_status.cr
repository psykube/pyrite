# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JobStatus represents the current state of a Job.
  class Kubernetes::Apis::Batch::V1::JobStatus
    # Active is the number of actively running pods.
    property active : Int32 | Nil

    # CompletionTime represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    property completion_time : Time | Nil

    # Conditions represent the latest available observations of an object's current state. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    property conditions : Array(Kubernetes::Apis::Batch::V1::JobCondition) | Nil

    # Failed is the number of pods which reached Phase Failed.
    property failed : Int32 | Nil

    # StartTime represents time when the job was acknowledged by the Job Manager. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    property start_time : Time | Nil

    # Succeeded is the number of pods which reached Phase Succeeded.
    property succeeded : Int32 | Nil

    YAML.mapping({
      active:          {type: Int32, nilable: true, key: "active", getter: false, setter: false},
      completion_time: {type: Time, nilable: true, key: "completionTime", getter: false, setter: false},
      conditions:      {type: Array(Kubernetes::Apis::Batch::V1::JobCondition), nilable: true, key: "conditions", getter: false, setter: false},
      failed:          {type: Int32, nilable: true, key: "failed", getter: false, setter: false},
      start_time:      {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
      succeeded:       {type: Int32, nilable: true, key: "succeeded", getter: false, setter: false},
    }, true)

    JSON.mapping({
      active:          {type: Int32, nilable: true, key: "active", getter: false, setter: false},
      completion_time: {type: Time, nilable: true, key: "completionTime", getter: false, setter: false},
      conditions:      {type: Array(Kubernetes::Apis::Batch::V1::JobCondition), nilable: true, key: "conditions", getter: false, setter: false},
      failed:          {type: Int32, nilable: true, key: "failed", getter: false, setter: false},
      start_time:      {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
      succeeded:       {type: Int32, nilable: true, key: "succeeded", getter: false, setter: false},
    }, true)

    def initialize(*, @active : Int32 | Nil = nil, @completion_time : Time | Nil = nil, @conditions : Array | Nil = nil, @failed : Int32 | Nil = nil, @start_time : Time | Nil = nil, @succeeded : Int32 | Nil = nil)
    end
  end
end
