# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior of the PodDisruptionBudget.
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec

  # Most recently observed status of the PodDisruptionBudget.
  property status : ::Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus

  YAML.mapping({
    api_version: {type: String, default: "PodDisruptionBudget", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodDisruptionBudget", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "PodDisruptionBudget"
    @kind = "v1beta1"
  end

  # create a PodDisruptionBudget
  def create
  end

  # list or watch objects of kind PodDisruptionBudget
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of PodDisruptionBudget
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified PodDisruptionBudget
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified PodDisruptionBudget
  def replace
  end

  # partially update the specified PodDisruptionBudget
  def patch
  end

  # delete a PodDisruptionBudget
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified PodDisruptionBudget
  def self.read_status(name : String, namespace : String = "default")
  end

  # replace status of the specified PodDisruptionBudget
  def replace_status
  end

  # partially update status of the specified PodDisruptionBudget
  def patch_status
  end
end
