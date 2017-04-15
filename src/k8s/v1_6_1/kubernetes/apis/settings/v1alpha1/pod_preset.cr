require "yaml"
require "json"

# PodPreset is a policy resource that defines additional runtime requirements for a Pod.
class K8S::V1_6_1::Kubernetes::Apis::Settings::V1alpha1::PodPreset
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec

  YAML.mapping({
    api_version: {type: String, default: "PodPreset", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodPreset", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "PodPreset"
    @kind = "v1alpha1"
  end

  # list or watch objects of kind PodPreset
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a PodPreset
  def self.create(metadata = nil, spec = nil, namespace : String = "default")
  end

  # read the specified PodPreset
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
