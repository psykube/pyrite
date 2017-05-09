# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
  class Definitions::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus
    # currentMetrics is the last read state of the metrics used by this autoscaler.
    property current_metrics : Array(Kubernetes::Apis::Autoscaling::V2alpha1::MetricStatus)

    # currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
    property current_replicas : Int32

    # desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
    property desired_replicas : Int32

    # lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
    property last_scale_time : Apimachinery::Apis::Meta::V1::Time

    # observedGeneration is the most recent generation observed by this autoscaler.
    property observed_generation : Int32?

    YAML.mapping({current_metrics:     {type: Array(Kubernetes::Apis::Autoscaling::V2alpha1::MetricStatus), nilable: false, key: currentMetrics, getter: false, setter: false},
                  current_replicas:    {type: Int32, nilable: false, key: currentReplicas, getter: false, setter: false},
                  desired_replicas:    {type: Int32, nilable: false, key: desiredReplicas, getter: false, setter: false},
                  last_scale_time:     {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastScaleTime, getter: false, setter: false},
                  observed_generation: {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false}}, true)

    JSON.mapping({current_metrics:     {type: Array(Kubernetes::Apis::Autoscaling::V2alpha1::MetricStatus), nilable: false, key: currentMetrics, getter: false, setter: false},
                  current_replicas:    {type: Int32, nilable: false, key: currentReplicas, getter: false, setter: false},
                  desired_replicas:    {type: Int32, nilable: false, key: desiredReplicas, getter: false, setter: false},
                  last_scale_time:     {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastScaleTime, getter: false, setter: false},
                  observed_generation: {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false}}, true)

    def initialize(@current_metrics : Array? = nil, @current_replicas : Int32? = nil, @desired_replicas : Int32? = nil, @last_scale_time : Apimachinery::Apis::Meta::V1::Time = nil, @observed_generation : Int32? = nil)
    end
  end
end
