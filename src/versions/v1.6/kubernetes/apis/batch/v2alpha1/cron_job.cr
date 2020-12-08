# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJob represents the configuration of a single cron job.
  class Kubernetes::Apis::Batch::V2alpha1::CronJob
    getter api_version : String = "batch/v2alpha1"
    getter kind : String = "CronJob"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec is a structure defining the expected behavior of a job, including the schedule. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Apis::Batch::V2alpha1::CronJobSpec | Nil

    # Status is a structure describing current status of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Apis::Batch::V2alpha1::CronJobStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Batch::V2alpha1::CronJobSpec | Nil = nil, @status : Kubernetes::Apis::Batch::V2alpha1::CronJobStatus | Nil = nil)
    end

    # create a CronJob
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind CronJob
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of CronJob
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified CronJob
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified CronJob
    def replace(context : String | Nil = nil)
    end

    # partially update the specified CronJob
    def patch(context : String | Nil = nil)
    end

    # delete a CronJob
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified CronJob
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified CronJob
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified CronJob
    def patch_status(context : String | Nil = nil)
    end

    # create a ScheduledJob
    def create_batch_v2alpha1_scheduled_job(context : String | Nil = nil)
    end

    # list or watch objects of kind ScheduledJob
    def self.list_batch_v2alpha1_scheduled_job(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of ScheduledJob
    def self.delete_batch_v2alpha1_scheduled_job(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified ScheduledJob
    def self.read_batch_v2alpha1_scheduled_job(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified ScheduledJob
    def replace_batch_v2alpha1_scheduled_job(context : String | Nil = nil)
    end

    # partially update the specified ScheduledJob
    def patch_batch_v2alpha1_scheduled_job(context : String | Nil = nil)
    end

    # delete a ScheduledJob
    def delete_batch_v2alpha1_scheduled_job(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified ScheduledJob
    def self.read_batch_v2alpha1_scheduled_job_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified ScheduledJob
    def replace_batch_v2alpha1_scheduled_job_status(context : String | Nil = nil)
    end

    # partially update status of the specified ScheduledJob
    def patch_batch_v2alpha1_scheduled_job_status(context : String | Nil = nil)
    end
  end

  module Resources::Batch::V2alpha1
    alias CronJob = ::Pyrite::Kubernetes::Apis::Batch::V2alpha1::CronJob
  end
end
