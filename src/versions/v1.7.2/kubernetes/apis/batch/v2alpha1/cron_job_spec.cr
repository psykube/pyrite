# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobSpec describes how the job execution will look like and when it will actually run.
  class Kubernetes::Apis::Batch::V2alpha1::CronJobSpec
    # Specifies how to treat concurrent executions of a Job. Defaults to Allow.
    property concurrency_policy : String | Nil

    # The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    property failed_jobs_history_limit : Int32 | Nil

    # Specifies the job that will be created when executing a CronJob.
    property job_template : Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec

    # The schedule in Cron format, see [https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)
    property schedule : String

    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    property starting_deadline_seconds : Int32 | Nil

    # The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    property successful_jobs_history_limit : Int32 | Nil

    # This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    property suspend : Bool | Nil

    YAML.mapping({
      concurrency_policy:            {type: String, nilable: true, key: "concurrencyPolicy", getter: false, setter: false},
      failed_jobs_history_limit:     {type: Int32, nilable: true, key: "failedJobsHistoryLimit", getter: false, setter: false},
      job_template:                  {type: Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec, nilable: false, key: "jobTemplate", getter: false, setter: false},
      schedule:                      {type: String, nilable: false, key: "schedule", getter: false, setter: false},
      starting_deadline_seconds:     {type: Int32, nilable: true, key: "startingDeadlineSeconds", getter: false, setter: false},
      successful_jobs_history_limit: {type: Int32, nilable: true, key: "successfulJobsHistoryLimit", getter: false, setter: false},
      suspend:                       {type: Bool, nilable: true, key: "suspend", getter: false, setter: false},
    }, true)

    JSON.mapping({
      concurrency_policy:            {type: String, nilable: true, key: "concurrencyPolicy", getter: false, setter: false},
      failed_jobs_history_limit:     {type: Int32, nilable: true, key: "failedJobsHistoryLimit", getter: false, setter: false},
      job_template:                  {type: Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec, nilable: false, key: "jobTemplate", getter: false, setter: false},
      schedule:                      {type: String, nilable: false, key: "schedule", getter: false, setter: false},
      starting_deadline_seconds:     {type: Int32, nilable: true, key: "startingDeadlineSeconds", getter: false, setter: false},
      successful_jobs_history_limit: {type: Int32, nilable: true, key: "successfulJobsHistoryLimit", getter: false, setter: false},
      suspend:                       {type: Bool, nilable: true, key: "suspend", getter: false, setter: false},
    }, true)

    def initialize(*, @concurrency_policy : String | Nil = nil, @failed_jobs_history_limit : Int32 | Nil = nil, @job_template : Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec | Nil = nil, @schedule : String | Nil = nil, @starting_deadline_seconds : Int32 | Nil = nil, @successful_jobs_history_limit : Int32 | Nil = nil, @suspend : Bool | Nil = nil)
    end
  end
end
