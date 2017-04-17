# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# represents a scaling request for a resource.
class Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::Scale
  # Standard object metadata; More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # defines the behavior of the scale.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.
  property spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleSpec

  # current status of the scale.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.Read-only.
  property status : ::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleStatus

  YAML.mapping({
    api_version: {type: String, default: "Scale", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Scale", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Scale"
    @kind = "v1beta1"
  end

  # read scale of the specified Scale
  def self.read_extensions_v1beta1deployments_scale(name : String, namespace : String = "default")
  end

  # replace scale of the specified Scale
  def replace_extensions_v1beta1deployments_scale
  end

  # partially update scale of the specified Scale
  def patch_extensions_v1beta1deployments_scale
  end

  # read scale of the specified Scale
  def self.read_extensions_v1beta1replicasets_scale(name : String, namespace : String = "default")
  end

  # replace scale of the specified Scale
  def replace_extensions_v1beta1replicasets_scale
  end

  # partially update scale of the specified Scale
  def patch_extensions_v1beta1replicasets_scale
  end

  # read scale of the specified Scale
  def self.read_extensions_v1beta1replicationcontrollers_scale(name : String, namespace : String = "default")
  end

  # replace scale of the specified Scale
  def replace_extensions_v1beta1replicationcontrollers_scale
  end

  # partially update scale of the specified Scale
  def patch_extensions_v1beta1replicationcontrollers_scale
  end
end
