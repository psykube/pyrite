# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to [.../pods/<pod name>/evictions.](.../pods/<pod name>/evictions.)
  class Kubernetes::Apis::Policy::V1beta1::Eviction
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "policy/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Eviction"

    def self.new(pull : JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "policy/v1beta1" && instance.kind == "Eviction"
          raise JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "policy/v1beta1" && instance.kind == "Eviction"
          raise YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # DeleteOptions may be provided
    @[::JSON::Field(key: "deleteOptions")]
    @[::YAML::Field(key: "deleteOptions")]
    property delete_options : Apimachinery::Apis::Meta::V1::DeleteOptions | Nil

    # ObjectMeta describes the pod that is being evicted.
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    def initialize(*, @delete_options : Apimachinery::Apis::Meta::V1::DeleteOptions | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Policy::V1beta1
    alias Eviction = ::Pyrite::Kubernetes::Apis::Policy::V1beta1::Eviction
  end
end
