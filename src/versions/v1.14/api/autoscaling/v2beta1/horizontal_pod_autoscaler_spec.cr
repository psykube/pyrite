# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
  class Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec
    # maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
    property max_replicas : Int32

    # metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
    property metrics : Array(Api::Autoscaling::V2beta1::MetricSpec) | Nil

    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down. It defaults to 1 pod.
    property min_replicas : Int32 | Nil

    # scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
    property scale_target_ref : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    ::YAML.mapping({
      max_replicas:     {type: Int32, nilable: false, key: "maxReplicas", getter: false, setter: false},
      metrics:          {type: Array(Api::Autoscaling::V2beta1::MetricSpec), nilable: true, key: "metrics", getter: false, setter: false},
      min_replicas:     {type: Int32, nilable: true, key: "minReplicas", getter: false, setter: false},
      scale_target_ref: {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "scaleTargetRef", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      max_replicas:     {type: Int32, nilable: false, key: "maxReplicas", getter: false, setter: false},
      metrics:          {type: Array(Api::Autoscaling::V2beta1::MetricSpec), nilable: true, key: "metrics", getter: false, setter: false},
      min_replicas:     {type: Int32, nilable: true, key: "minReplicas", getter: false, setter: false},
      scale_target_ref: {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "scaleTargetRef", getter: false, setter: false},
    }, true)

    def initialize(*, @max_replicas : Int32, @scale_target_ref : Api::Autoscaling::V2beta1::CrossVersionObjectReference, @metrics : Array | Nil = nil, @min_replicas : Int32 | Nil = nil)
    end
  end
end
