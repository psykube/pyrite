require "yaml"
require "json"

# PodPresetList is a list of PodPreset objects.
class K8S::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPresetList
  # Items is a list of schema objects.
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPreset)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "PodPresetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPreset), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodPresetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPreset), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "PodPresetList"
    @kind = "v1alpha1"
  end

  # list or watch objects of kind PodPreset
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a PodPreset
  def self.create(metadata = nil, spec = nil, namespace : String = "default")
  end

  # list or watch objects of kind PodPreset
  def self.get
    Kubernetes.client.get
  end
end
