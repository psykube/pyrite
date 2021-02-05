# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # InitializerConfiguration describes the configuration of initializers.
  class Api::Admissionregistration::V1alpha1::InitializerConfiguration
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "admissionregistration/v1alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "InitializerConfiguration"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "admissionregistration/v1alpha1" && instance.kind == "InitializerConfiguration"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "admissionregistration/v1alpha1" && instance.kind == "InitializerConfiguration"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Initializers is a list of resources and their default initializers Order-sensitive. When merging multiple InitializerConfigurations, we sort the initializers from different InitializerConfigurations by the name of the InitializerConfigurations; the order of the initializers from the same InitializerConfiguration is preserved.
    @[::JSON::Field(key: "initializers")]
    @[::YAML::Field(key: "initializers")]
    property initializers : Array(Api::Admissionregistration::V1alpha1::Initializer) | Nil

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    def initialize(*, @initializers : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1alpha1
    alias InitializerConfiguration = ::Pyrite::Api::Admissionregistration::V1alpha1::InitializerConfiguration
  end
end
