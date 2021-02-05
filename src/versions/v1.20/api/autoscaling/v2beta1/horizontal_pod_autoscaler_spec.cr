# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
  class Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
    @[JSON::Field(key: "maxReplicas")]
    @[YAML::Field(key: "maxReplicas")]
    property max_replicas : Int32

    # metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
    @[JSON::Field(key: "metrics")]
    @[YAML::Field(key: "metrics")]
    property metrics : Array(Api::Autoscaling::V2beta1::MetricSpec) | Nil

    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
    @[JSON::Field(key: "minReplicas")]
    @[YAML::Field(key: "minReplicas")]
    property min_replicas : Int32 | Nil

    # scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
    @[JSON::Field(key: "scaleTargetRef")]
    @[YAML::Field(key: "scaleTargetRef")]
    property scale_target_ref : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    def initialize(*, @max_replicas : Int32, @metrics : Array | Nil = nil, @min_replicas : Int32 | Nil = nil, @scale_target_ref : Api::Autoscaling::V2beta1::CrossVersionObjectReference)
    end
  end
end
