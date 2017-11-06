# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJob represents the configuration of a single cron job.
  class Api::Batch::V2alpha1::CronJob
    getter api_version : String = "io/k8s/api/batch/v2alpha1"
    getter kind : String = "CronJob"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of a cron job, including the schedule. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Batch::V2alpha1::CronJobSpec | Nil

    # Current status of a cron job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Batch::V2alpha1::CronJobStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/batch/v2alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CronJob", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V2alpha1::CronJobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V2alpha1::CronJobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Batch::V2alpha1::CronJobSpec | Nil = nil, @status : Api::Batch::V2alpha1::CronJobStatus | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Batch::V2alpha1
    alias CronJob = ::Pyrite::Api::Batch::V2alpha1::CronJob
  end
end
