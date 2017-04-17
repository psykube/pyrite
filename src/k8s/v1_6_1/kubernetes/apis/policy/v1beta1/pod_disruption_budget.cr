# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class K8S::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior of the PodDisruptionBudget.
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec

  # Most recently observed status of the PodDisruptionBudget.
  property status : ::K8S::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus

  YAML.mapping({
    api_version: {type: String, default: "PodDisruptionBudget", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodDisruptionBudget", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "PodDisruptionBudget"
    @kind = "v1beta1"
  end

  # list or watch objects of kind PodDisruptionBudget
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a PodDisruptionBudget
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # delete collection of PodDisruptionBudget
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified PodDisruptionBudget
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified PodDisruptionBudget
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete a PodDisruptionBudget
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified PodDisruptionBudget
  def self.get(pretty : String?, name : String, namespace : String = "default")
  end

  # replace status of the specified PodDisruptionBudget
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end
end
