# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # PodPresetList is a list of PodPreset objects.
  class Definitions::Kubernetes::Apis::Settings::V1alpha1::PodPresetList
    # Items is a list of schema objects.
    property items : Array(Kubernetes::Apis::Settings::V1alpha1::PodPreset)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "PodPresetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Settings::V1alpha1::PodPreset), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "PodPresetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Settings::V1alpha1::PodPreset), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "settings/v1alpha1"
      @kind = "PodPresetList"
    end
  end

  module Resources::Settings::V1alpha1
    include Resource
    alias PodPresetList = Definitions::Kubernetes::Apis::Settings::V1alpha1::PodPresetList
  end
end
