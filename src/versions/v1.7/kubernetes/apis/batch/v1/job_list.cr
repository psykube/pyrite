# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JobList is a collection of jobs.
  class Kubernetes::Apis::Batch::V1::JobList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # items is the list of Jobs.
    property items : Array(Kubernetes::Apis::Batch::V1::Job)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Batch::V1::Job), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Kubernetes::Apis::Batch::V1::Job), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    # list or watch objects of kind Job
    def self.list_for_all_namespaces(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # create a Job
    def create(metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, spec : Kubernetes::Apis::Batch::V1::JobSpec | Nil = nil, status : Kubernetes::Apis::Batch::V1::JobStatus | Nil = nil, context : String | Nil = nil)
    end

    # list or watch objects of kind Job
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Job
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end
  end
end
