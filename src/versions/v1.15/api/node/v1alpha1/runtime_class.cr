# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see [https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md)
  class Api::Node::V1alpha1::RuntimeClass
    getter api_version : String = "node/v1alpha1"
    getter kind : String = "RuntimeClass"
    # More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the RuntimeClass More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Node::V1alpha1::RuntimeClassSpec

    ::YAML.mapping({
      api_version: {type: String, default: "node/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RuntimeClass", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Node::V1alpha1::RuntimeClassSpec, nilable: false, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "node/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RuntimeClass", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Node::V1alpha1::RuntimeClassSpec, nilable: false, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Node::V1alpha1::RuntimeClassSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end

    # create a RuntimeClass
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind RuntimeClass
    def self.list(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of RuntimeClass
    def self.delete(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified RuntimeClass
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified RuntimeClass
    def replace(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified RuntimeClass
    def patch(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a RuntimeClass
    def delete(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end
  end

  module Resources::Node::V1alpha1
    alias RuntimeClass = ::Pyrite::Api::Node::V1alpha1::RuntimeClass
  end
end
