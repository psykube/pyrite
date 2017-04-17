# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodPreset is a policy resource that defines additional runtime requirements for a Pod.
class Pyrite::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPreset
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  property spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec

  YAML.mapping({
    api_version: {type: String, default: "PodPreset", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodPreset", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "PodPreset"
    @kind = "v1alpha1"
  end

  # create a PodPreset
  def create
  end

  # list or watch objects of kind PodPreset
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of PodPreset
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified PodPreset
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified PodPreset
  def replace
  end

  # partially update the specified PodPreset
  def patch
  end

  # delete a PodPreset
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
