require "yaml"
require "json"

# Pod Security Policy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
class K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # spec defines the policy enforced.
  property spec : ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec

  YAML.mapping({
    api_version: {type: String, default: "PodSecurityPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodSecurityPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "PodSecurityPolicy"
    @kind = "v1beta1"
  end

  # list or watch objects of kind PodSecurityPolicy
  def self.get
    Kubernetes.client.get
  end

  # create a PodSecurityPolicy
  def self.create(metadata = nil, spec = nil)
  end

  # read the specified PodSecurityPolicy
  def self.get(name : String)
    Kubernetes.client.get
  end
end
