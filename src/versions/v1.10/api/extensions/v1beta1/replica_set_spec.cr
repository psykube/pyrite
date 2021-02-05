# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicaSetSpec is the specification of a ReplicaSet.
  class Api::Extensions::V1beta1::ReplicaSetSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    @[JSON::Field(key: "minReadySeconds")]
    @[YAML::Field(key: "minReadySeconds")]
    property min_ready_seconds : Int32 | Nil

    # Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)
    @[JSON::Field(key: "replicas")]
    @[YAML::Field(key: "replicas")]
    property replicas : Int32 | Nil

    # Selector is a label query over pods that should match the replica count. If the selector is empty, it is defaulted to the labels present on the pod template. Label keys and values that must match in order to be controlled by this replica set. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)
    @[JSON::Field(key: "template")]
    @[YAML::Field(key: "template")]
    property template : Api::Core::V1::PodTemplateSpec | Nil

    def initialize(*, @min_ready_seconds : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @template : Api::Core::V1::PodTemplateSpec | Nil = nil)
    end
  end
end
