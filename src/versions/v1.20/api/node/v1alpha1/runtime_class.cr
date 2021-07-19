# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see [https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md)
  class Api::Node::V1alpha1::RuntimeClass < Kubernetes::Object
    @api_version = "node.k8s.io/v1alpha1"
    @kind = "RuntimeClass"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "node.k8s.io/v1alpha1" && instance.kind == "RuntimeClass"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "node.k8s.io/v1alpha1" && instance.kind == "RuntimeClass"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Specification of the RuntimeClass More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Node::V1alpha1::RuntimeClassSpec

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Node::V1alpha1::RuntimeClassSpec)
    end
  end
end
