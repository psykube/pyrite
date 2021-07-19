# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressClass represents the class of the Ingress, referenced by the Ingress Spec. The [`ingressclass.kubernetes.io/is-default-class` annotation can be used to indicate that an IngressClass should be considered default. When a single IngressClass resource has this annotation set to true, new Ingress resources without a class specified will be assigned this default class.](`ingressclass.kubernetes.io/is-default-class` annotation can be used to indicate that an IngressClass should be considered default. When a single IngressClass resource has this annotation set to true, new Ingress resources without a class specified will be assigned this default class.)
  class Api::Networking::V1beta1::IngressClass < Kubernetes::Object
    @api_version = "networking.k8s.io/v1beta1"
    @kind = "IngressClass"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "networking.k8s.io/v1beta1" && instance.kind == "IngressClass"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "networking.k8s.io/v1beta1" && instance.kind == "IngressClass"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Spec is the desired state of the IngressClass. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Networking::V1beta1::IngressClassSpec | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Networking::V1beta1::IngressClassSpec | Nil = nil)
    end
  end
end
