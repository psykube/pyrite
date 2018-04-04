# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A StatefulSetSpec is the specification of a StatefulSet.
  class Api::Apps::V1::StatefulSetSpec
    # podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
    property pod_management_policy : String | Nil

    # replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
    property replicas : Int32 | Nil

    # revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
    property revision_history_limit : Int32 | Nil

    # selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector

    # serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get [DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.)
    property service_name : String

    # template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
    property template : Api::Core::V1::PodTemplateSpec

    # updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
    property update_strategy : Api::Apps::V1::StatefulSetUpdateStrategy | Nil

    # volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
    property volume_claim_templates : Array(Api::Core::V1::PersistentVolumeClaim) | Nil

    ::YAML.mapping({
      pod_management_policy:  {type: String, nilable: true, key: "podManagementPolicy", getter: false, setter: false},
      replicas:               {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
      revision_history_limit: {type: Int32, nilable: true, key: "revisionHistoryLimit", getter: false, setter: false},
      selector:               {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: false, key: "selector", getter: false, setter: false},
      service_name:           {type: String, nilable: false, key: "serviceName", getter: false, setter: false},
      template:               {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      update_strategy:        {type: Api::Apps::V1::StatefulSetUpdateStrategy, nilable: true, key: "updateStrategy", getter: false, setter: false},
      volume_claim_templates: {type: Array(Api::Core::V1::PersistentVolumeClaim), nilable: true, key: "volumeClaimTemplates", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      pod_management_policy:  {type: String, nilable: true, key: "podManagementPolicy", getter: false, setter: false},
      replicas:               {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
      revision_history_limit: {type: Int32, nilable: true, key: "revisionHistoryLimit", getter: false, setter: false},
      selector:               {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: false, key: "selector", getter: false, setter: false},
      service_name:           {type: String, nilable: false, key: "serviceName", getter: false, setter: false},
      template:               {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      update_strategy:        {type: Api::Apps::V1::StatefulSetUpdateStrategy, nilable: true, key: "updateStrategy", getter: false, setter: false},
      volume_claim_templates: {type: Array(Api::Core::V1::PersistentVolumeClaim), nilable: true, key: "volumeClaimTemplates", getter: false, setter: false},
    }, true)

    def initialize(*, @pod_management_policy : String | Nil = nil, @replicas : Int32 | Nil = nil, @revision_history_limit : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @service_name : String | Nil = nil, @template : Api::Core::V1::PodTemplateSpec | Nil = nil, @update_strategy : Api::Apps::V1::StatefulSetUpdateStrategy | Nil = nil, @volume_claim_templates : Array | Nil = nil)
    end
  end
end
