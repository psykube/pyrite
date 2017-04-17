# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
class Pyrite::V1_6_1::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec
  # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e.even in the absence of the evicted pod. So for example you can prevent all voluntary evictions by specifying "100%".
  property min_available : ::Pyrite::V1_6_1::Apimachinery::Util::Intstr::IntOrString

  # Label query over pods whose evictions are managed by the disruption budget.
  property selector : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector

  YAML.mapping({min_available: {type: ::Pyrite::V1_6_1::Apimachinery::Util::Intstr::IntOrString, nilable: true, key: minAvailable, getter: false, setter: false},
                selector:      {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false}}, true)

  JSON.mapping({min_available: {type: ::Pyrite::V1_6_1::Apimachinery::Util::Intstr::IntOrString, nilable: true, key: minAvailable, getter: false, setter: false},
                selector:      {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false}}, true)

  def initialize(@min_available = nil, @selector = nil)
  end
end
