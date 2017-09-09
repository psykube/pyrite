# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobSpec describes how the job execution will look like and when it will actually run.
  class Kubernetes::Apis::Batch::V2alpha1::CronJobSpec
    # ConcurrencyPolicy specifies how to treat concurrent executions of a Job.
    property concurrency_policy : String | Nil

    # The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    property failed_jobs_history_limit : Int32 | Nil

    # JobTemplate is the object that describes the job that will be created when executing a CronJob.
    property job_template : Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec

    # Schedule contains the schedule in Cron format, see [https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)
    property schedule : String

    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    property starting_deadline_seconds : Int32 | Nil

    # The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    property successful_jobs_history_limit : Int32 | Nil

    # Suspend flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    property suspend : Bool | Nil

    YAML.mapping({
      concurrency_policy:            {type: String, nilable: true, key: "concurrencyPolicy"},
      failed_jobs_history_limit:     {type: Int32, nilable: true, key: "failedJobsHistoryLimit"},
      job_template:                  {type: Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec, nilable: false, key: "jobTemplate"},
      schedule:                      {type: String, nilable: false, key: "schedule"},
      starting_deadline_seconds:     {type: Int32, nilable: true, key: "startingDeadlineSeconds"},
      successful_jobs_history_limit: {type: Int32, nilable: true, key: "successfulJobsHistoryLimit"},
      suspend:                       {type: Bool, nilable: true, key: "suspend"},
    }, true)

    JSON.mapping({
      concurrency_policy:            {type: String, nilable: true, key: "concurrencyPolicy"},
      failed_jobs_history_limit:     {type: Int32, nilable: true, key: "failedJobsHistoryLimit"},
      job_template:                  {type: Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec, nilable: false, key: "jobTemplate"},
      schedule:                      {type: String, nilable: false, key: "schedule"},
      starting_deadline_seconds:     {type: Int32, nilable: true, key: "startingDeadlineSeconds"},
      successful_jobs_history_limit: {type: Int32, nilable: true, key: "successfulJobsHistoryLimit"},
      suspend:                       {type: Bool, nilable: true, key: "suspend"},
    }, true)

    def initialize(*, @concurrency_policy : String | Nil = nil, @failed_jobs_history_limit : Int32 | Nil = nil, @job_template : Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec | Nil = nil, @schedule : String | Nil = nil, @starting_deadline_seconds : Int32 | Nil = nil, @successful_jobs_history_limit : Int32 | Nil = nil, @suspend : Bool | Nil = nil)
    end
  end
end
