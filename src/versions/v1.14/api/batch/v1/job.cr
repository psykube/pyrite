# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Job represents the configuration of a single job.
  class Api::Batch::V1::Job
    getter api_version : String = "batch/v1"
    getter kind : String = "Job"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of a job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Batch::V1::JobSpec | Nil

    # Current status of a job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Batch::V1::JobStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "batch/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Job", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V1::JobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V1::JobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "batch/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Job", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V1::JobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V1::JobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Batch::V1::JobSpec | Nil = nil, @status : Api::Batch::V1::JobStatus | Nil = nil)
    end

    # create a Job
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind Job
    def self.list(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Job
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified Job
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified Job
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified Job
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a Job
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end

    # read status of the specified Job
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified Job
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update status of the specified Job
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end
  end

  module Resources::Batch::V1
    alias Job = ::Pyrite::Api::Batch::V1::Job
  end
end
