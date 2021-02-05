# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicationControllerSpec is the specification of a replication controller.
  class Kubernetes::Api::V1::ReplicationControllerSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    @[JSON::Field(key: "minReadySeconds")]
    @[YAML::Field(key: "minReadySeconds")]
    property min_ready_seconds : Int32 | Nil

    # Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller](http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller)
    @[JSON::Field(key: "replicas")]
    @[YAML::Field(key: "replicas")]
    property replicas : Int32 | Nil

    # Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : Hash(String, String) | Nil

    # Template is the object that describes the pod that will be created if insufficient replicas are detected. This takes precedence over a TemplateRef. More info: [http://kubernetes.io/docs/user-guide/replication-controller#pod-template](http://kubernetes.io/docs/user-guide/replication-controller#pod-template)
    @[JSON::Field(key: "template")]
    @[YAML::Field(key: "template")]
    property template : Kubernetes::Api::V1::PodTemplateSpec | Nil

    def initialize(*, @min_ready_seconds : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @selector : Hash(String, String) | Nil = nil, @template : Kubernetes::Api::V1::PodTemplateSpec | Nil = nil)
    end
  end
end
