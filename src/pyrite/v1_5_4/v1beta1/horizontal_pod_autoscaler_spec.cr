# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # specification of a horizontal pod autoscaler.
  class Definitions::V1beta1::HorizontalPodAutoscalerSpec
    # target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified it defaults to the target CPU utilization at 80% of the requested resources.
    property cpu_utilization : V1beta1::CPUTargetUtilization

    # upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
    property max_replicas : Int32

    # lower limit for the number of pods that can be set by the autoscaler, default 1.
    property min_replicas : Int32?

    # reference to Scale subresource; horizontal pod autoscaler will learn the current resource consumption from its status, and will set the desired number of pods by modifying its spec.
    property scale_ref : V1beta1::SubresourceReference

    YAML.mapping({cpu_utilization: {type: V1beta1::CPUTargetUtilization, nilable: true, key: cpuUtilization, getter: false, setter: false},
                  max_replicas:    {type: Int32, nilable: false, key: maxReplicas, getter: false, setter: false},
                  min_replicas:    {type: Int32, nilable: true, key: minReplicas, getter: false, setter: false},
                  scale_ref:       {type: V1beta1::SubresourceReference, nilable: false, key: scaleRef, getter: false, setter: false}}, true)

    JSON.mapping({cpu_utilization: {type: V1beta1::CPUTargetUtilization, nilable: true, key: cpuUtilization, getter: false, setter: false},
                  max_replicas:    {type: Int32, nilable: false, key: maxReplicas, getter: false, setter: false},
                  min_replicas:    {type: Int32, nilable: true, key: minReplicas, getter: false, setter: false},
                  scale_ref:       {type: V1beta1::SubresourceReference, nilable: false, key: scaleRef, getter: false, setter: false}}, true)

    def initialize(@cpu_utilization : V1beta1::CPUTargetUtilization = nil, @max_replicas : Int32? = nil, @min_replicas : Int32? = nil, @scale_ref : V1beta1::SubresourceReference = nil)
    end
  end
end
