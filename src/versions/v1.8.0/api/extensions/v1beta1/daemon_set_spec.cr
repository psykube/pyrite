# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetSpec is the specification of a daemon set.
  class Api::Extensions::V1beta1::DaemonSetSpec
    # The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
    property min_ready_seconds : Int32 | Nil

    # The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    property revision_history_limit : Int32 | Nil

    # A label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)
    property template : Api::Core::V1::PodTemplateSpec

    # DEPRECATED. A sequence number representing a specific generation of the template. Populated by the system. It can be set only during the creation.
    property template_generation : Int32 | Nil

    # An update strategy to replace existing DaemonSet pods with new pods.
    property update_strategy : Api::Extensions::V1beta1::DaemonSetUpdateStrategy | Nil

    YAML.mapping({
      min_ready_seconds:      {type: Int32, nilable: true, key: "minReadySeconds", getter: false, setter: false},
      revision_history_limit: {type: Int32, nilable: true, key: "revisionHistoryLimit", getter: false, setter: false},
      selector:               {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      template:               {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      template_generation:    {type: Int32, nilable: true, key: "templateGeneration", getter: false, setter: false},
      update_strategy:        {type: Api::Extensions::V1beta1::DaemonSetUpdateStrategy, nilable: true, key: "updateStrategy", getter: false, setter: false},
    }, true)

    JSON.mapping({
      min_ready_seconds:      {type: Int32, nilable: true, key: "minReadySeconds", getter: false, setter: false},
      revision_history_limit: {type: Int32, nilable: true, key: "revisionHistoryLimit", getter: false, setter: false},
      selector:               {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      template:               {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      template_generation:    {type: Int32, nilable: true, key: "templateGeneration", getter: false, setter: false},
      update_strategy:        {type: Api::Extensions::V1beta1::DaemonSetUpdateStrategy, nilable: true, key: "updateStrategy", getter: false, setter: false},
    }, true)

    def initialize(*, @min_ready_seconds : Int32 | Nil = nil, @revision_history_limit : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @template : Api::Core::V1::PodTemplateSpec | Nil = nil, @template_generation : Int32 | Nil = nil, @update_strategy : Api::Extensions::V1beta1::DaemonSetUpdateStrategy | Nil = nil)
    end
  end
end
