# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
  class Definitions::V1beta1::PodDisruptionBudgetSpec
    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    property min_available : Intstr::IntOrString

    # Label query over pods whose evictions are managed by the disruption budget.
    property selector : Unversioned::LabelSelector

    YAML.mapping({min_available: {type: Intstr::IntOrString, nilable: true, key: minAvailable, getter: false, setter: false},
                  selector:      {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false}}, true)

    JSON.mapping({min_available: {type: Intstr::IntOrString, nilable: true, key: minAvailable, getter: false, setter: false},
                  selector:      {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false}}, true)

    def initialize(@min_available : Intstr::IntOrString = nil, @selector : Unversioned::LabelSelector = nil)
    end
  end
end
