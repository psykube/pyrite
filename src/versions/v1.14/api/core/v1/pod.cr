# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts.
  class Api::Core::V1::Pod
    getter api_version : String = "v1"
    getter kind : String = "Pod"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the pod. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Core::V1::PodSpec | Nil

    # Most recently observed status of the pod. This data may not be up to date. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Core::V1::PodStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Pod", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::PodSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::PodStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Pod", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::PodSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::PodStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Core::V1::PodSpec | Nil = nil, @status : Api::Core::V1::PodStatus | Nil = nil)
    end

    # create a Pod
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind Pod
    def self.list(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Pod
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified Pod
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified Pod
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified Pod
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a Pod
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end

    # read status of the specified Pod
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified Pod
    def replace_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update status of the specified Pod
    def patch_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end
  end

  module Resources::V1
    alias Pod = ::Pyrite::Api::Core::V1::Pod
  end
end
