# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJob represents the configuration of a single cron job.
  class Api::Batch::V2alpha1::CronJob
    getter api_version : String = "batch/v2alpha1"
    getter kind : String = "CronJob"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of a cron job, including the schedule. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Batch::V2alpha1::CronJobSpec | Nil

    # Current status of a cron job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Batch::V2alpha1::CronJobStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Batch::V2alpha1::CronJobSpec | Nil = nil, @status : Api::Batch::V2alpha1::CronJobStatus | Nil = nil)
    end

    # create a CronJob
    def create(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, dry_run : String | Nil = nil)
    end

    # list or watch objects of kind CronJob
    def self.list(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of CronJob
    def self.delete(context : String | Nil = nil, include_uninitialized : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified CronJob
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified CronJob
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update the specified CronJob
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # delete a CronJob
    def delete(api_version : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # read status of the specified CronJob
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified CronJob
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end

    # partially update status of the specified CronJob
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil)
    end
  end

  module Resources::Batch::V2alpha1
    alias CronJob = ::Pyrite::Api::Batch::V2alpha1::CronJob
  end
end
