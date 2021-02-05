# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJob represents the configuration of a single cron job.
  class Kubernetes::Apis::Batch::V2alpha1::CronJob
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("batch/v2alpha1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("batch/v2alpha1"))]
    # The API and version we are accessing.
    getter api_version : String = "batch/v2alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "CronJob"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of a cron job, including the schedule. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Batch::V2alpha1::CronJobSpec | Nil

    # Current status of a cron job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Batch::V2alpha1::CronJobStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Batch::V2alpha1::CronJobSpec | Nil = nil, @status : Kubernetes::Apis::Batch::V2alpha1::CronJobStatus | Nil = nil)
    end
  end

  module Resources::Batch::V2alpha1
    alias CronJob = ::Pyrite::Kubernetes::Apis::Batch::V2alpha1::CronJob
  end
end
