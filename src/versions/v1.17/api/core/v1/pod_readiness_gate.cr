# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodReadinessGate contains the reference to a pod condition
  class Api::Core::V1::PodReadinessGate
    # ConditionType refers to a condition in the pod's condition list with matching type.
    property condition_type : String

    ::YAML.mapping({
      condition_type: {type: String, nilable: false, key: "conditionType", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      condition_type: {type: String, nilable: false, key: "conditionType", getter: false, setter: false},
    }, true)

    def initialize(*, @condition_type : String)
    end
  end
end
