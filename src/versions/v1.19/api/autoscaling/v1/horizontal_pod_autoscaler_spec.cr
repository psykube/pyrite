# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # specification of a horizontal pod autoscaler.
  class Api::Autoscaling::V1::HorizontalPodAutoscalerSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
    @[JSON::Field(key: "maxReplicas")]
    @[YAML::Field(key: "maxReplicas")]
    property max_replicas : Int32

    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
    @[JSON::Field(key: "minReplicas")]
    @[YAML::Field(key: "minReplicas")]
    property min_replicas : Int32 | Nil

    # reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
    @[JSON::Field(key: "scaleTargetRef")]
    @[YAML::Field(key: "scaleTargetRef")]
    property scale_target_ref : Api::Autoscaling::V1::CrossVersionObjectReference

    # target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
    @[JSON::Field(key: "targetCPUUtilizationPercentage")]
    @[YAML::Field(key: "targetCPUUtilizationPercentage")]
    property target_cpu_utilization_percentage : Int32 | Nil

    def initialize(*, @max_replicas : Int32, @min_replicas : Int32 | Nil = nil, @scale_target_ref : Api::Autoscaling::V1::CrossVersionObjectReference, @target_cpu_utilization_percentage : Int32 | Nil = nil)
    end
  end
end
