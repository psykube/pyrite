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

    # CompletedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
    @[::JSON::Field(key: "completedIndexes")]
    @[::YAML::Field(key: "completedIndexes")]
    property completed_indexes : String | Nil

    # Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
    @[::JSON::Field(key: "completionTime")]
    @[::YAML::Field(key: "completionTime")]
    property completion_time : Time | Nil

    # The latest available observations of an object's current state. When a Job fails, one of the conditions will have type "Failed" and status true. When a Job is suspended, one of the conditions will have type "Suspended" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type "Complete" and status true. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Batch::V1::JobCondition) | Nil

    # The number of pods which reached phase Failed.
    @[::JSON::Field(key: "failed")]
    @[::YAML::Field(key: "failed")]
    property failed : Int32 | Nil

    # Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.
    @[::JSON::Field(key: "startTime")]
    @[::YAML::Field(key: "startTime")]
    property start_time : Time | Nil

    # The number of pods which reached phase Succeeded.
    @[::JSON::Field(key: "succeeded")]
    @[::YAML::Field(key: "succeeded")]
    property succeeded : Int32 | Nil

    def initialize(*, @active : Int32 | Nil = nil, @completed_indexes : String | Nil = nil, @completion_time : Time | Nil = nil, @conditions : Array | Nil = nil, @failed : Int32 | Nil = nil, @start_time : Time | Nil = nil, @succeeded : Int32 | Nil = nil)
    end
  end
end
