require "yaml"
require "json"

# ConfigMapList is a resource containing a list of ConfigMap objects.
class K8S::V1_6_1::Kubernetes::Api::V1::ConfigMapList
  # Items is the list of ConfigMaps.
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::ConfigMap)

  # More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ConfigMapList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ConfigMap), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ConfigMapList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ConfigMap), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ConfigMapList"
    @kind = "v1"
  end

  # list or watch objects of kind ConfigMap
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind ConfigMap
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ConfigMap
  def self.create(data = nil, metadata = nil, namespace : String = "default")
  end
end
