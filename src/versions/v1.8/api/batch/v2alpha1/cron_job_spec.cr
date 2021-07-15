# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobSpec describes how the job execution will look like and when it will actually run.
  class Api::Batch::V2alpha1::CronJobSpec < Kubernetes::Spec
    # Specifies how to treat concurrent executions of a Job. Defaults to Allow.
    @[::JSON::Field(key: "concurrencyPolicy")]
    @[::YAML::Field(key: "concurrencyPolicy")]
    property concurrency_policy : String | Nil

    # The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    @[::JSON::Field(key: "failedJobsHistoryLimit")]
    @[::YAML::Field(key: "failedJobsHistoryLimit")]
    property failed_jobs_history_limit : Int32 | Nil

    # Specifies the job that will be created when executing a CronJob.
    @[::JSON::Field(key: "jobTemplate")]
    @[::YAML::Field(key: "jobTemplate")]
    property job_template : Api::Batch::V2alpha1::JobTemplateSpec

    # The schedule in Cron format, see [https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)
    @[::JSON::Field(key: "schedule")]
    @[::YAML::Field(key: "schedule")]
    property schedule : String

    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    @[::JSON::Field(key: "startingDeadlineSeconds")]
    @[::YAML::Field(key: "startingDeadlineSeconds")]
    property starting_deadline_seconds : Int32 | Nil

    # The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    @[::JSON::Field(key: "successfulJobsHistoryLimit")]
    @[::YAML::Field(key: "successfulJobsHistoryLimit")]
    property successful_jobs_history_limit : Int32 | Nil

    # This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    @[::JSON::Field(key: "suspend")]
    @[::YAML::Field(key: "suspend")]
    property suspend : Bool | Nil

    def initialize(*, @concurrency_policy : String | Nil = nil, @failed_jobs_history_limit : Int32 | Nil = nil, @job_template : Api::Batch::V2alpha1::JobTemplateSpec, @schedule : String, @starting_deadline_seconds : Int32 | Nil = nil, @successful_jobs_history_limit : Int32 | Nil = nil, @suspend : Bool | Nil = nil)
    end
  end
end
