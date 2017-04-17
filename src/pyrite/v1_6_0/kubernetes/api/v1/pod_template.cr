# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodTemplate describes a template for creating copies of a predefined pod.
class Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplate
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Template defines the pods that will be created from this pod template.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
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

  def initialize(@metadata = nil, @template = nil)
    @api_version = "PodTemplate"
    @kind = "v1"
  end

  # create a PodTemplate
  def create
  end

  # list or watch objects of kind PodTemplate
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of PodTemplate
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified PodTemplate
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified PodTemplate
  def replace
  end

  # partially update the specified PodTemplate
  def patch
  end

  # delete a PodTemplate
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
