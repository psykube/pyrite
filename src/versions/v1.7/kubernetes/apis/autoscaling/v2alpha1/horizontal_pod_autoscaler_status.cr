# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
  class Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerCondition)

    # currentMetrics is the last read state of the metrics used by this autoscaler.
    @[::JSON::Field(key: "currentMetrics")]
    @[::YAML::Field(key: "currentMetrics")]
    property current_metrics : Array(Kubernetes::Apis::Autoscaling::V2alpha1::MetricStatus)

    # currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
    @[::JSON::Field(key: "currentReplicas")]
    @[::YAML::Field(key: "currentReplicas")]
    property current_replicas : Int32

    # desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
    @[::JSON::Field(key: "desiredReplicas")]
    @[::YAML::Field(key: "desiredReplicas")]
    property desired_replicas : Int32

    # lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
    @[::JSON::Field(key: "lastScaleTime")]
    @[::YAML::Field(key: "lastScaleTime")]
    property last_scale_time : Time | Nil

    # observedGeneration is the most recent generation observed by this autoscaler.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    def initialize(*, @conditions : Array, @current_metrics : Array, @current_replicas : Int32, @desired_replicas : Int32, @last_scale_time : Time | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
