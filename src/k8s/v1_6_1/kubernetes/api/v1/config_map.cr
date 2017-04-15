require "yaml"
require "json"

# ConfigMap holds configuration data for pods to consume.
class K8S::V1_6_1::Kubernetes::Api::V1::ConfigMap
  # Data contains the configuration data.Each key must be a valid DNS_SUBDOMAIN with an optional leading dot.
  property data : Hash(String, String)?

  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  YAML.mapping({
    api_version: {type: String, default: "ConfigMap", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ConfigMap", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@data = nil, @metadata = nil)
    @api_version = "ConfigMap"
    @kind = "v1"
  end

  # list or watch objects of kind ConfigMap
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ConfigMap
  def self.create(data = nil, metadata = nil, namespace : String = "default")
  end

  # read the specified ConfigMap
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
