# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # current status of a horizontal pod autoscaler
  class Api::Autoscaling::V1::HorizontalPodAutoscalerStatus < Kubernetes::Spec
    # current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
    @[::JSON::Field(key: "currentCPUUtilizationPercentage")]
    @[::YAML::Field(key: "currentCPUUtilizationPercentage")]
    property current_cpu_utilization_percentage : Int32 | Nil

    # current number of replicas of pods managed by this autoscaler.
    @[::JSON::Field(key: "currentReplicas")]
    @[::YAML::Field(key: "currentReplicas")]
    property current_replicas : Int32

    # desired number of replicas of pods managed by this autoscaler.
    @[::JSON::Field(key: "desiredReplicas")]
    @[::YAML::Field(key: "desiredReplicas")]
    property desired_replicas : Int32

    # last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
    @[::JSON::Field(key: "lastScaleTime")]
    @[::YAML::Field(key: "lastScaleTime")]
    property last_scale_time : Time | Nil

    # most recent generation observed by this autoscaler.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    def initialize(*, @current_cpu_utilization_percentage : Int32 | Nil = nil, @current_replicas : Int32, @desired_replicas : Int32, @last_scale_time : Time | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
