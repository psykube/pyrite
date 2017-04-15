require "yaml"
require "json"

# ResourceQuota sets aggregate quota restrictions enforced per namespace
class K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuota
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired quota.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaSpec

  # Status defines the actual enforced quota and its current usage.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaStatus

  YAML.mapping({
    api_version: {type: String, default: "ResourceQuota", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ResourceQuota", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "ResourceQuota"
    @kind = "v1"
  end

  # list or watch objects of kind ResourceQuota
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ResourceQuota
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified ResourceQuota
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified ResourceQuota
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
