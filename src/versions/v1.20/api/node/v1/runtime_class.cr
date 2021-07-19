# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see [https://kubernetes.io/docs/concepts/containers/runtime-class/](https://kubernetes.io/docs/concepts/containers/runtime-class/)
  class Api::Node::V1::RuntimeClass < Kubernetes::Object
    @api_version = "node/v1"
    @kind = "RuntimeClass"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "node/v1" && instance.kind == "RuntimeClass"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "node/v1" && instance.kind == "RuntimeClass"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
    @[::JSON::Field(key: "handler")]
    @[::YAML::Field(key: "handler")]
    property handler : String

    # Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
    #  [https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/)
    # This field is in beta starting v1.18 and is only honored by servers that enable the PodOverhead feature.
    @[::JSON::Field(key: "overhead")]
    @[::YAML::Field(key: "overhead")]
    property overhead : Api::Node::V1::Overhead | Nil

    # Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
    @[::JSON::Field(key: "scheduling")]
    @[::YAML::Field(key: "scheduling")]
    property scheduling : Api::Node::V1::Scheduling | Nil

    def initialize(*, @handler : String, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @overhead : Api::Node::V1::Overhead | Nil = nil, @scheduling : Api::Node::V1::Scheduling | Nil = nil)
    end
  end
end
