# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # Job represents the configuration of a single job.
  class Definitions::Kubernetes::Apis::Batch::V1::Job
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Spec is a structure defining the expected behavior of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Apis::Batch::V1::JobSpec

    # Status is a structure describing current status of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Apis::Batch::V1::JobStatus

    YAML.mapping({
      api_version: {type: String, default: "Job", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V1::JobStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Job", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Batch::V1::JobStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Batch::V1::JobSpec = nil, @status : Kubernetes::Apis::Batch::V1::JobStatus = nil)
      @api_version = "batch/v1"
      @kind = "Job"
    end
  end

  module Resources::Batch::V1
    include Resource
    alias Job = Definitions::Kubernetes::Apis::Batch::V1::Job
  end
end
