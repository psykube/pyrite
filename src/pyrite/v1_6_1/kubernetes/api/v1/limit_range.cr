# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# LimitRange sets resource usage limits for each kind of resource in a Namespace.
class Pyrite::V1_6_1::Kubernetes::Api::V1::LimitRange
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the limits enforced.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::LimitRangeSpec

  YAML.mapping({
    api_version: {type: String, default: "LimitRange", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::LimitRangeSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "LimitRange", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::LimitRangeSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "LimitRange"
    @kind = "v1"
  end

  # create a LimitRange
  def create
  end

  # list or watch objects of kind LimitRange
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of LimitRange
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified LimitRange
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified LimitRange
  def replace
  end

  # partially update the specified LimitRange
  def patch
  end

  # delete a LimitRange
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
