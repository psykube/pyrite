require "yaml"
require "json"

# PodTemplate describes a template for creating copies of a predefined pod.
class K8S::V1_6_1::Kubernetes::Api::V1::PodTemplate
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Template defines the pods that will be created from this pod template.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property template : ::K8S::V1_6_1::Kubernetes::Api::V1::PodTemplateSpec

  YAML.mapping({
    api_version: {type: String, default: "PodTemplate", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    template:    {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodTemplate", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    template:    {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @template = nil)
    @api_version = "PodTemplate"
    @kind = "v1"
  end

  # list or watch objects of kind PodTemplate
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a PodTemplate
  def self.create(metadata = nil, template = nil, namespace : String = "default")
  end

  # read the specified PodTemplate
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
