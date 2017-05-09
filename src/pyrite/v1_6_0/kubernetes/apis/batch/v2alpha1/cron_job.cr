# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # CronJob represents the configuration of a single cron job.
  class Definitions::Kubernetes::Apis::Batch::V2alpha1::CronJob
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Spec is a structure defining the expected behavior of a job, including the schedule. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Apis::Batch::V2alpha1::CronJobSpec

    # Status is a structure describing current status of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Apis::Batch::V2alpha1::CronJobStatus

    YAML.mapping({
      api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Batch::V2alpha1::CronJobSpec = nil, @status : Kubernetes::Apis::Batch::V2alpha1::CronJobStatus = nil)
      @api_version = "batch/v2alpha1"
      @kind = "CronJob"
    end
  end

  module Resources::Batch::V2alpha1
    include Resource
    alias CronJob = Definitions::Kubernetes::Apis::Batch::V2alpha1::CronJob
  end
end
