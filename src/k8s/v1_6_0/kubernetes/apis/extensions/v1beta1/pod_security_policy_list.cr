require "yaml"
require "json"

# Pod Security Policy List is a list of PodSecurityPolicy objects.
class K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicyList
  # Items is a list of schema objects.
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "PodSecurityPolicyList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodSecurityPolicyList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "PodSecurityPolicyList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind PodSecurityPolicy
  def self.get
    Kubernetes.client.get
  end

  # create a PodSecurityPolicy
  def self.create(metadata = nil, spec = nil)
  end
end
