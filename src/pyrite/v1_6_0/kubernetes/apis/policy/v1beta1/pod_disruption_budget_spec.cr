# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
  class Definitions::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec
    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    property min_available : Apimachinery::Util::Intstr::IntOrString

    # Label query over pods whose evictions are managed by the disruption budget.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector

    YAML.mapping({min_available: {type: Apimachinery::Util::Intstr::IntOrString, nilable: true, key: minAvailable, getter: false, setter: false},
                  selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false}}, true)

    JSON.mapping({min_available: {type: Apimachinery::Util::Intstr::IntOrString, nilable: true, key: minAvailable, getter: false, setter: false},
                  selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false}}, true)

    def initialize(@min_available : Apimachinery::Util::Intstr::IntOrString = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector = nil)
    end
  end
end
