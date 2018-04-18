# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalAdmissionHookConfigurationList is a list of ExternalAdmissionHookConfiguration.
  class Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfigurationList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # List of ExternalAdmissionHookConfiguration.
    property items : Array(Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
