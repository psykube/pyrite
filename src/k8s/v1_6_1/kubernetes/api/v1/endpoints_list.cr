require "yaml"
require "json"

# EndpointsList is a list of endpoints.
class K8S::V1_6_1::Kubernetes::Api::V1::EndpointsList
  # List of endpoints.
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::Endpoints)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "EndpointsList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::Endpoints), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "EndpointsList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::Endpoints), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "EndpointsList"
    @kind = "v1"
  end

  # list or watch objects of kind Endpoints
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind Endpoints
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create Endpoints
  def self.create(subsets, metadata = nil, namespace : String = "default")
  end
end
