# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
  class Api::Node::V1alpha1::RuntimeClassSpec < Kubernetes::Spec
    # RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must conform to the DNS Label (RFC 1123) requirements and is immutable.
    @[::JSON::Field(key: "runtimeHandler")]
    @[::YAML::Field(key: "runtimeHandler")]
    property runtime_handler : String

    def initialize(*, @runtime_handler : String)
    end
  end
end
