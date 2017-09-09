# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JobTemplateSpec describes the data a Job should have when created from a template
  class Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec
    # Standard object's metadata of the jobs created from this template. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Apis::Batch::V1::JobSpec | Nil

    YAML.mapping({
      metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:     {type: Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: "spec"},
    }, true)

    JSON.mapping({
      metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:     {type: Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: "spec"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Batch::V1::JobSpec | Nil = nil)
    end
  end
end
