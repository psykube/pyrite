# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodPreset is a policy resource that defines additional runtime requirements for a Pod.
  class Kubernetes::Apis::Settings::V1alpha1::PodPreset
    getter api_version : String = "settings/v1alpha1"
    getter kind : String = "PodPreset"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    property spec : Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec | Nil

    YAML.mapping({
      api_version: {type: String, default: "settings/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodPreset", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "settings/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PodPreset", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec | Nil = nil)
    end
  end

  module Resources::Settings::V1alpha1
    alias PodPreset = ::Pyrite::Kubernetes::Apis::Settings::V1alpha1::PodPreset
  end
end
