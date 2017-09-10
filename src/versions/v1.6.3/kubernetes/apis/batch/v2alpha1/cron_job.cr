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

    YAML.mapping({
      api_version: {type: String, default: "batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Batch::V2alpha1::CronJobSpec | Nil = nil, @status : Kubernetes::Apis::Batch::V2alpha1::CronJobStatus | Nil = nil)
    end
  end

  module Resources::Batch::V2alpha1
    alias CronJob = Kubernetes::Apis::Batch::V2alpha1::CronJob
  end
end
