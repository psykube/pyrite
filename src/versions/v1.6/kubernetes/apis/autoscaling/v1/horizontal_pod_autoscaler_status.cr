# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # current status of a horizontal pod autoscaler
  class Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus
    # current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
    property current_cpu_utilization_percentage : Int32 | Nil

    # current number of replicas of pods managed by this autoscaler.
    property current_replicas : Int32

    # desired number of replicas of pods managed by this autoscaler.
    property desired_replicas : Int32

    # last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
    property last_scale_time : Time | Nil

    # most recent generation observed by this autoscaler.
    property observed_generation : Int32 | Nil

    ::YAML.mapping({
      current_cpu_utilization_percentage: {type: Int32, nilable: true, key: "currentCPUUtilizationPercentage", getter: false, setter: false},
      current_replicas:                   {type: Int32, nilable: false, key: "currentReplicas", getter: false, setter: false},
      desired_replicas:                   {type: Int32, nilable: false, key: "desiredReplicas", getter: false, setter: false},
      last_scale_time:                    {type: Time, nilable: true, key: "lastScaleTime", getter: false, setter: false},
      observed_generation:                {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      current_cpu_utilization_percentage: {type: Int32, nilable: true, key: "currentCPUUtilizationPercentage", getter: false, setter: false},
      current_replicas:                   {type: Int32, nilable: false, key: "currentReplicas", getter: false, setter: false},
      desired_replicas:                   {type: Int32, nilable: false, key: "desiredReplicas", getter: false, setter: false},
      last_scale_time:                    {type: Time, nilable: true, key: "lastScaleTime", getter: false, setter: false},
      observed_generation:                {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    }, true)

    def initialize(*, @current_replicas : Int32, @desired_replicas : Int32, @current_cpu_utilization_percentage : Int32 | Nil = nil, @last_scale_time : Time | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
