require "yaml"
require "json"

# LimitRange sets resource usage limits for each kind of resource in a Namespace.
class K8S::V1_6_1::Kubernetes::Api::V1::LimitRange
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the limits enforced.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_1::Kubernetes::Api::V1::LimitRangeSpec

  YAML.mapping({
    api_version: {type: String, default: "LimitRange", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::LimitRangeSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "LimitRange", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::LimitRangeSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "LimitRange"
    @kind = "v1"
  end

  # list or watch objects of kind LimitRange
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a LimitRange
  def self.create(metadata = nil, spec = nil, namespace : String = "default")
  end

  # read the specified LimitRange
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
