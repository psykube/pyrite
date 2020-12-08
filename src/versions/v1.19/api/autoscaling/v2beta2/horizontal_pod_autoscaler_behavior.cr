# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
  class Api::Autoscaling::V2beta2::HorizontalPodAutoscalerBehavior
    # scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
    property scale_down : Api::Autoscaling::V2beta2::HPAScalingRules | Nil

    # scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
    #   * increase no more than 4 pods per 60 seconds
    #   * double the number of pods per 60 seconds
    # No stabilization is used.
    property scale_up : Api::Autoscaling::V2beta2::HPAScalingRules | Nil

    ::YAML.mapping({
      scale_down: {type: Api::Autoscaling::V2beta2::HPAScalingRules, nilable: true, key: "scaleDown", getter: false, setter: false},
      scale_up:   {type: Api::Autoscaling::V2beta2::HPAScalingRules, nilable: true, key: "scaleUp", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      scale_down: {type: Api::Autoscaling::V2beta2::HPAScalingRules, nilable: true, key: "scaleDown", getter: false, setter: false},
      scale_up:   {type: Api::Autoscaling::V2beta2::HPAScalingRules, nilable: true, key: "scaleUp", getter: false, setter: false},
    }, true)

    def initialize(*, @scale_down : Api::Autoscaling::V2beta2::HPAScalingRules | Nil = nil, @scale_up : Api::Autoscaling::V2beta2::HPAScalingRules | Nil = nil)
    end
  end
end
