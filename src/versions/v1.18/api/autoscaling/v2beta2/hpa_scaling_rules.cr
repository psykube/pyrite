# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
  class Api::Autoscaling::V2beta2::HPAScalingRules
    # policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
    property policies : Array(Api::Autoscaling::V2beta2::HPAScalingPolicy) | Nil

    # selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.
    property select_policy : String | Nil

    # StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
    property stabilization_window_seconds : Int32 | Nil

    ::YAML.mapping({
      policies:                     {type: Array(Api::Autoscaling::V2beta2::HPAScalingPolicy), nilable: true, key: "policies", getter: false, setter: false},
      select_policy:                {type: String, nilable: true, key: "selectPolicy", getter: false, setter: false},
      stabilization_window_seconds: {type: Int32, nilable: true, key: "stabilizationWindowSeconds", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      policies:                     {type: Array(Api::Autoscaling::V2beta2::HPAScalingPolicy), nilable: true, key: "policies", getter: false, setter: false},
      select_policy:                {type: String, nilable: true, key: "selectPolicy", getter: false, setter: false},
      stabilization_window_seconds: {type: Int32, nilable: true, key: "stabilizationWindowSeconds", getter: false, setter: false},
    }, true)

    def initialize(*, @policies : Array | Nil = nil, @select_policy : String | Nil = nil, @stabilization_window_seconds : Int32 | Nil = nil)
    end
  end
end
