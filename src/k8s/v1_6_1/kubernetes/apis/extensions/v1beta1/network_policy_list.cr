require "yaml"
require "json"

# Network Policy List is a list of NetworkPolicy objects.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyList
  # Items is a list of schema objects.
  property items : Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "NetworkPolicyList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "NetworkPolicyList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "NetworkPolicyList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind NetworkPolicy
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a NetworkPolicy
  def self.create(metadata = nil, spec = nil, namespace : String = "default")
  end

  # list or watch objects of kind NetworkPolicy
  def self.get
    Kubernetes.client.get
  end
end
