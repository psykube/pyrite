# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # InitializerConfiguration describes the configuration of initializers.
  class Kubernetes::Apis::Admissionregistration::V1alpha1::InitializerConfiguration
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("admissionregistration/v1alpha1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("admissionregistration/v1alpha1"))]
    # The API and version we are accessing.
    getter api_version : String = "admissionregistration/v1alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "InitializerConfiguration"
    # Initializers is a list of resources and their default initializers Order-sensitive. When merging multiple InitializerConfigurations, we sort the initializers from different InitializerConfigurations by the name of the InitializerConfigurations; the order of the initializers from the same InitializerConfiguration is preserved.
    @[::JSON::Field(key: "initializers")]
    @[::YAML::Field(key: "initializers")]
    property initializers : Array(Kubernetes::Apis::Admissionregistration::V1alpha1::Initializer) | Nil

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    def initialize(*, @initializers : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1alpha1
    alias InitializerConfiguration = ::Pyrite::Kubernetes::Apis::Admissionregistration::V1alpha1::InitializerConfiguration
  end
end
