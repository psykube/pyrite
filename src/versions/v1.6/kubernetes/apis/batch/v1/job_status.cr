# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JobStatus represents the current state of a Job.
  class Kubernetes::Apis::Batch::V1::JobStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Active is the number of actively running pods.
    @[JSON::Field(key: "active")]
    @[YAML::Field(key: "active")]
    property active : Int32 | Nil

    # CompletionTime represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    @[JSON::Field(key: "completionTime")]
    @[YAML::Field(key: "completionTime")]
    property completion_time : Time | Nil

    # Conditions represent the latest available observations of an object's current state. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    @[JSON::Field(key: "conditions")]
    @[YAML::Field(key: "conditions")]
    property conditions : Array(Kubernetes::Apis::Batch::V1::JobCondition) | Nil

    # Failed is the number of pods which reached Phase Failed.
    @[JSON::Field(key: "failed")]
    @[YAML::Field(key: "failed")]
    property failed : Int32 | Nil

    # StartTime represents time when the job was acknowledged by the Job Manager. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    @[JSON::Field(key: "startTime")]
    @[YAML::Field(key: "startTime")]
    property start_time : Time | Nil

    # Succeeded is the number of pods which reached Phase Succeeded.
    @[JSON::Field(key: "succeeded")]
    @[YAML::Field(key: "succeeded")]
    property succeeded : Int32 | Nil

    def initialize(*, @active : Int32 | Nil = nil, @completion_time : Time | Nil = nil, @conditions : Array | Nil = nil, @failed : Int32 | Nil = nil, @start_time : Time | Nil = nil, @succeeded : Int32 | Nil = nil)
    end
  end
end
