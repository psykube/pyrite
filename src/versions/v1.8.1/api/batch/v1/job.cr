# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Job represents the configuration of a single job.
  class Api::Batch::V1::Job
    getter api_version : String = "io/k8s/api/batch/v1"
    getter kind : String = "Job"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of a job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Batch::V1::JobSpec | Nil

    # Current status of a job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Batch::V1::JobStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/batch/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Job", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V1::JobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V1::JobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/batch/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Job", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Batch::V1::JobSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Batch::V1::JobStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Batch::V1::JobSpec | Nil = nil, @status : Api::Batch::V1::JobStatus | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Batch::V1
    alias Job = ::Pyrite::Api::Batch::V1::Job
  end
end
