# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A StatefulSetSpec is the specification of a StatefulSet.
  class Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec < Kubernetes::Spec
    # Replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32 | Nil

    # Selector is a label query over pods that should match the replica count. If empty, defaulted to labels on the pod template. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # ServiceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get [DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.)
    @[::JSON::Field(key: "serviceName")]
    @[::YAML::Field(key: "serviceName")]
    property service_name : String

    # Template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
    @[::JSON::Field(key: "template")]
    @[::YAML::Field(key: "template")]
    property template : Kubernetes::Api::V1::PodTemplateSpec

    # VolumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
    @[::JSON::Field(key: "volumeClaimTemplates")]
    @[::YAML::Field(key: "volumeClaimTemplates")]
    property volume_claim_templates : Array(Kubernetes::Api::V1::PersistentVolumeClaim) | Nil

    def initialize(*, @replicas : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @service_name : String, @template : Kubernetes::Api::V1::PodTemplateSpec, @volume_claim_templates : Array | Nil = nil)
    end
  end
end
