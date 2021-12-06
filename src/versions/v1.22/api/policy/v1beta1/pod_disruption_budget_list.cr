# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodDisruptionBudgetList is a collection of PodDisruptionBudgets.
  class Api::Policy::V1beta1::PodDisruptionBudgetList < Kubernetes::List(Api::Policy::V1beta1::PodDisruptionBudget)
  end
end
