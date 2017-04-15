require "yaml"
require "json"

# JobStatus represents the current state of a Job.
class K8S::V1_6_1::Kubernetes::Apis::Batch::V1::JobStatus
  # Active is the number of actively running pods.
  property active : Int32?

  # CompletionTime represents time when the job was completed.It is not guaranteed to be set in happens-before order across separate operations.It is represented in RFC3339 form and is in UTC.
  property completion_time : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time

  # Conditions represent the latest available observations of an object's current state.More info: http://kubernetes.io/docs/user-guide/jobs
  property conditions : Array(::K8S::V1_6_1::Kubernetes::Apis::Batch::V1::JobCondition)?

  # Failed is the number of pods which reached Phase Failed.
  property failed : Int32?

  # StartTime represents time when the job was acknowledged by the Job Manager.It is not guaranteed to be set in happens-before order across separate operations.It is represented in RFC3339 form and is in UTC.
  property start_time : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time

  # Succeeded is the number of pods which reached Phase Succeeded.
  property succeeded : Int32?

  YAML.mapping({active:          {type: Int32, nilable: true, key: active, getter: false, setter: false},
                completion_time: {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: completionTime, getter: false, setter: false},
                conditions:      {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Batch::V1::JobCondition), nilable: true, key: conditions, getter: false, setter: false},
                failed:          {type: Int32, nilable: true, key: failed, getter: false, setter: false},
                start_time:      {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startTime, getter: false, setter: false},
                succeeded:       {type: Int32, nilable: true, key: succeeded, getter: false, setter: false}}, true)

  JSON.mapping({active:          {type: Int32, nilable: true, key: active, getter: false, setter: false},
                completion_time: {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: completionTime, getter: false, setter: false},
                conditions:      {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Batch::V1::JobCondition), nilable: true, key: conditions, getter: false, setter: false},
                failed:          {type: Int32, nilable: true, key: failed, getter: false, setter: false},
                start_time:      {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startTime, getter: false, setter: false},
                succeeded:       {type: Int32, nilable: true, key: succeeded, getter: false, setter: false}}, true)

  def initialize(@active = nil, @completion_time = nil, @conditions = nil, @failed = nil, @start_time = nil, @succeeded = nil)
  end
end
