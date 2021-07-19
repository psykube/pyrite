# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CSIDriver captures information about a Container Storage Interface (CSI) volume driver deployed on the cluster. CSI drivers do not need to create the CSIDriver object directly. Instead they may use the cluster-driver-registrar sidecar container. When deployed with a CSI driver it automatically creates a CSIDriver object representing the driver. Kubernetes attach detach controller uses this object to determine whether attach is required. Kubelet uses this object to determine whether pod information needs to be passed on mount. CSIDriver objects are non-namespaced.
  class Api::Storage::V1beta1::CSIDriver < Kubernetes::Object
    @api_version = "storage.k8s.io/v1beta1"
    @kind = "CSIDriver"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "storage.k8s.io/v1beta1" && instance.kind == "CSIDriver"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "storage.k8s.io/v1beta1" && instance.kind == "CSIDriver"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Specification of the CSI Driver.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Storage::V1beta1::CSIDriverSpec

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Storage::V1beta1::CSIDriverSpec)
    end
  end
end
