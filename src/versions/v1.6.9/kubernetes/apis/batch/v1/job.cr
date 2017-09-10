# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Job represents the configuration of a single job.
  class Kubernetes::Apis::Batch::V1::Job
    getter api_version : String = "batch/v1"
    getter kind : String = "Job"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec is a structure defining the expected behavior of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Apis::Batch::V1::JobSpec | Nil

    # Status is a structure describing current status of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Apis::Batch::V1::JobStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "batch/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Job", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Batch::V1::JobStatus, nilable: true, key: "status"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "batch/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Job", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Batch::V1::JobStatus, nilable: true, key: "status"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Batch::V1::JobSpec | Nil = nil, @status : Kubernetes::Apis::Batch::V1::JobStatus | Nil = nil)
    end
  end

  module Resources::Batch::V1
    alias Job = Kubernetes::Apis::Batch::V1::Job
  end
end
