# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JobStatus represents the current state of a Job.
  class Kubernetes::Apis::Batch::V1::JobStatus
    # The number of actively running pods.
    property active : Int32 | Nil

    # Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    property completion_time : Time | Nil

    # The latest available observations of an object's current state. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    property conditions : Array(Kubernetes::Apis::Batch::V1::JobCondition) | Nil

    # The number of pods which reached phase Failed.
    property failed : Int32 | Nil

    # Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    property start_time : Time | Nil

    # The number of pods which reached phase Succeeded.
    property succeeded : Int32 | Nil

    YAML.mapping({
      active:          {type: Int32, nilable: true, key: "active"},
      completion_time: {type: Time, nilable: true, key: "completionTime"},
      conditions:      {type: Array(Kubernetes::Apis::Batch::V1::JobCondition), nilable: true, key: "conditions"},
      failed:          {type: Int32, nilable: true, key: "failed"},
      start_time:      {type: Time, nilable: true, key: "startTime"},
      succeeded:       {type: Int32, nilable: true, key: "succeeded"},
    }, true)

    JSON.mapping({
      active:          {type: Int32, nilable: true, key: "active"},
      completion_time: {type: Time, nilable: true, key: "completionTime"},
      conditions:      {type: Array(Kubernetes::Apis::Batch::V1::JobCondition), nilable: true, key: "conditions"},
      failed:          {type: Int32, nilable: true, key: "failed"},
      start_time:      {type: Time, nilable: true, key: "startTime"},
      succeeded:       {type: Int32, nilable: true, key: "succeeded"},
    }, true)

    def initialize(*, @active : Int32 | Nil = nil, @completion_time : Time | Nil = nil, @conditions : Array | Nil = nil, @failed : Int32 | Nil = nil, @start_time : Time | Nil = nil, @succeeded : Int32 | Nil = nil)
    end
  end
end
