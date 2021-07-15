# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JobStatus represents the current state of a Job.
  class Api::Batch::V1::JobStatus < Kubernetes::Spec
    # The number of actively running pods.
    @[::JSON::Field(key: "active")]
    @[::YAML::Field(key: "active")]
    property active : Int32 | Nil

    # Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
    @[::JSON::Field(key: "completionTime")]
    @[::YAML::Field(key: "completionTime")]
    property completion_time : Time | Nil

    # The latest available observations of an object's current state. When a job fails, one of the conditions will have type == "Failed". More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Batch::V1::JobCondition) | Nil

    # The number of pods which reached phase Failed.
    @[::JSON::Field(key: "failed")]
    @[::YAML::Field(key: "failed")]
    property failed : Int32 | Nil

    # Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    @[::JSON::Field(key: "startTime")]
    @[::YAML::Field(key: "startTime")]
    property start_time : Time | Nil

    # The number of pods which reached phase Succeeded.
    @[::JSON::Field(key: "succeeded")]
    @[::YAML::Field(key: "succeeded")]
    property succeeded : Int32 | Nil

    def initialize(*, @active : Int32 | Nil = nil, @completion_time : Time | Nil = nil, @conditions : Array | Nil = nil, @failed : Int32 | Nil = nil, @start_time : Time | Nil = nil, @succeeded : Int32 | Nil = nil)
    end
  end
end
