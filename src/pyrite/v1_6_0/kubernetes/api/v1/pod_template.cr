# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodTemplate describes a template for creating copies of a predefined pod.
class Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplate
  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Template defines the pods that will be created from this pod template. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
  property template : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec

  YAML.mapping({
    api_version: {type: String, default: "PodTemplate", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    template:    {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodTemplate", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    template:    {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @template : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec = nil)
    @api_version = "PodTemplate"
    @kind = "v1"
  end

  # create a PodTemplate
  def create(context : String? = nil)
  end

  # list or watch objects of kind PodTemplate
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of PodTemplate
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified PodTemplate
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified PodTemplate
  def replace(context : String? = nil)
  end

  # partially update the specified PodTemplate
  def patch(context : String? = nil)
  end

  # delete a PodTemplate
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end
end
