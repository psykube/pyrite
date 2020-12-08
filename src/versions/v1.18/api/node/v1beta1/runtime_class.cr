# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see [https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md)
  class Api::Node::V1beta1::RuntimeClass
    getter api_version : String = "node/v1beta1"
    getter kind : String = "RuntimeClass"
    # Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must conform to the DNS Label (RFC 1123) requirements, and is immutable.
    property handler : String

    # More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see [https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.)
    property overhead : Api::Node::V1beta1::Overhead | Nil

    # Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
    property scheduling : Api::Node::V1beta1::Scheduling | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "node/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RuntimeClass", key: "kind", setter: false},
      handler:     {type: String, nilable: false, key: "handler", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      overhead:    {type: Api::Node::V1beta1::Overhead, nilable: true, key: "overhead", getter: false, setter: false},
      scheduling:  {type: Api::Node::V1beta1::Scheduling, nilable: true, key: "scheduling", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "node/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RuntimeClass", key: "kind", setter: false},
      handler:     {type: String, nilable: false, key: "handler", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      overhead:    {type: Api::Node::V1beta1::Overhead, nilable: true, key: "overhead", getter: false, setter: false},
      scheduling:  {type: Api::Node::V1beta1::Scheduling, nilable: true, key: "scheduling", getter: false, setter: false},
    }, true)

    def initialize(*, @handler : String, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @overhead : Api::Node::V1beta1::Overhead | Nil = nil, @scheduling : Api::Node::V1beta1::Scheduling | Nil = nil)
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

  module Resources::Node::V1beta1
    alias RuntimeClass = ::Pyrite::Api::Node::V1beta1::RuntimeClass
  end
end
