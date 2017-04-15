require "yaml"
require "json"

# LimitRangeList is a list of LimitRange items.
class K8S::V1_6_1::Kubernetes::Api::V1::LimitRangeList
  # Items is a list of LimitRange objects.More info: http://releases.k8s.io/HEAD/docs/design/admission_control_limit_range.md
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::LimitRange)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "LimitRangeList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::LimitRange), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "LimitRangeList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::LimitRange), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "LimitRangeList"
    @kind = "v1"
  end

  # list or watch objects of kind LimitRange
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind LimitRange
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a LimitRange
  def self.create(metadata = nil, spec = nil, namespace : String = "default")
  end
end
