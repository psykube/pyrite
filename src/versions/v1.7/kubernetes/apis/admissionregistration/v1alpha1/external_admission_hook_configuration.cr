# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalAdmissionHookConfiguration describes the configuration of initializers.
  class Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "admissionregistration/v1alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "ExternalAdmissionHookConfiguration"
    # ExternalAdmissionHooks is a list of external admission webhooks and the affected resources and operations.
    @[JSON::Field(key: "externalAdmissionHooks")]
    @[YAML::Field(key: "externalAdmissionHooks")]
    property external_admission_hooks : Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook) | Nil

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    def initialize(*, @external_admission_hooks : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1alpha1
    alias ExternalAdmissionHookConfiguration = ::Pyrite::Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration
  end
end
