require "yaml"
require "json"

# DeploymentList is a list of Deployments.
class K8S::V1_6_1::Kubernetes::Apis::Apps::V1beta1::DeploymentList
  # Items is the list of Deployments.
  property items : Array(::K8S::V1_6_1::Kubernetes::Apis::Apps::V1beta1::Deployment)

  # Standard list metadata.
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "DeploymentList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Apps::V1beta1::Deployment), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "DeploymentList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Apps::V1beta1::Deployment), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "DeploymentList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind Deployment
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind Deployment
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a Deployment
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end
end
