# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetSpec is the specification of a daemon set.
  class Api::Apps::V1::DaemonSetSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
    @[JSON::Field(key: "minReadySeconds")]
    @[YAML::Field(key: "minReadySeconds")]
    property min_ready_seconds : Int32 | Nil

    # The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    @[JSON::Field(key: "revisionHistoryLimit")]
    @[YAML::Field(key: "revisionHistoryLimit")]
    property revision_history_limit : Int32 | Nil

    # A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector

    # An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)
    @[JSON::Field(key: "template")]
    @[YAML::Field(key: "template")]
    property template : Api::Core::V1::PodTemplateSpec

    # An update strategy to replace existing DaemonSet pods with new pods.
    @[JSON::Field(key: "updateStrategy")]
    @[YAML::Field(key: "updateStrategy")]
    property update_strategy : Api::Apps::V1::DaemonSetUpdateStrategy | Nil

    def initialize(*, @min_ready_seconds : Int32 | Nil = nil, @revision_history_limit : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector, @template : Api::Core::V1::PodTemplateSpec, @update_strategy : Api::Apps::V1::DaemonSetUpdateStrategy | Nil = nil)
    end
  end
end
