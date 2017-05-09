# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # PodDisruptionBudgetList is a collection of PodDisruptionBudgets.
  class Definitions::V1beta1::PodDisruptionBudgetList
    property items : Array(V1beta1::PodDisruptionBudget)

    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1beta1::PodDisruptionBudget), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1beta1::PodDisruptionBudget), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
