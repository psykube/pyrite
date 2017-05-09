# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # PodPreset is a policy resource that defines additional runtime requirements for a Pod.
  class Definitions::Kubernetes::Apis::Settings::V1alpha1::PodPreset
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    property spec : Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec

    YAML.mapping({
      api_version: {type: String, default: "PodPreset", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: spec, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "PodPreset", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: spec, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec = nil)
      @api_version = "settings/v1alpha1"
      @kind = "PodPreset"
    end
  end

  module Resources::Settings::V1alpha1
    include Resource
    alias PodPreset = Definitions::Kubernetes::Apis::Settings::V1alpha1::PodPreset
  end
end
