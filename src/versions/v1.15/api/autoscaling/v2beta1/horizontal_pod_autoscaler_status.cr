# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
  class Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus
    # conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
    property conditions : Array(Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition)

    # currentMetrics is the last read state of the metrics used by this autoscaler.
    property current_metrics : Array(Api::Autoscaling::V2beta1::MetricStatus) | Nil

    # currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
    property current_replicas : Int32

    # desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
    property desired_replicas : Int32

    # lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
    property last_scale_time : Time | Nil

    # observedGeneration is the most recent generation observed by this autoscaler.
    property observed_generation : Int32 | Nil

    ::YAML.mapping({
      conditions:          {type: Array(Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition), nilable: false, key: "conditions", getter: false, setter: false},
      current_metrics:     {type: Array(Api::Autoscaling::V2beta1::MetricStatus), nilable: true, key: "currentMetrics", getter: false, setter: false},
      current_replicas:    {type: Int32, nilable: false, key: "currentReplicas", getter: false, setter: false},
      desired_replicas:    {type: Int32, nilable: false, key: "desiredReplicas", getter: false, setter: false},
      last_scale_time:     {type: Time, nilable: true, key: "lastScaleTime", getter: false, setter: false},
      observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions:          {type: Array(Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition), nilable: false, key: "conditions", getter: false, setter: false},
      current_metrics:     {type: Array(Api::Autoscaling::V2beta1::MetricStatus), nilable: true, key: "currentMetrics", getter: false, setter: false},
      current_replicas:    {type: Int32, nilable: false, key: "currentReplicas", getter: false, setter: false},
      desired_replicas:    {type: Int32, nilable: false, key: "desiredReplicas", getter: false, setter: false},
      last_scale_time:     {type: Time, nilable: true, key: "lastScaleTime", getter: false, setter: false},
      observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array, @current_replicas : Int32, @desired_replicas : Int32, @current_metrics : Array | Nil = nil, @last_scale_time : Time | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
