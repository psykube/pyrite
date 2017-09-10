# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalAdmissionHookConfiguration describes the configuration of initializers.
  class Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration
    getter api_version : String = "admissionregistration/v1alpha1"
    getter kind : String = "ExternalAdmissionHookConfiguration"
    # ExternalAdmissionHooks is a list of external admission webhooks and the affected resources and operations.
    property external_admission_hooks : Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook) | Nil

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    YAML.mapping({
      api_version:              {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:                     {type: String, default: "ExternalAdmissionHookConfiguration", key: "kind", setter: false},
      external_admission_hooks: {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook), nilable: true, key: "externalAdmissionHooks", getter: false, setter: false},
      metadata:                 {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version:              {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:                     {type: String, default: "ExternalAdmissionHookConfiguration", key: "kind", setter: false},
      external_admission_hooks: {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook), nilable: true, key: "externalAdmissionHooks", getter: false, setter: false},
      metadata:                 {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @external_admission_hooks : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1alpha1
    alias ExternalAdmissionHookConfiguration = Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration
  end
end
