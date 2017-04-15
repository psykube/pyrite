require "yaml"
require "json"

# A StatefulSetSpec is the specification of a StatefulSet.
class K8S::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec
  # Replicas is the desired number of replicas of the given Template.These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity.If unspecified, defaults to 1.
  property replicas : Int32?

  # Selector is a label query over pods that should match the replica count.If empty, defaulted to labels on the pod template.More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  property selector : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector

  # ServiceName is the name of the service that governs this StatefulSet.This service must exist before the StatefulSet, and is responsible for the network identity of the set.Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  property service_name : String

  # Template is the object that describes the pod that will be created if insufficient replicas are detected.Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
  property template : ::K8S::V1_6_1::Kubernetes::Api::V1::PodTemplateSpec

  # VolumeClaimTemplates is a list of claims that pods are allowed to reference.The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod.Every claim in this list must have at least one matching (by name) volumeMount in one container in the template.A claim in this list takes precedence over any volumes in the template, with the same name.
  property volume_claim_templates : Array(::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaim)?

  YAML.mapping({replicas:               {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                selector:               {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                service_name:           {type: String, nilable: false, key: serviceName, getter: false, setter: false},
                template:               {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false},
                volume_claim_templates: {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaim), nilable: true, key: volumeClaimTemplates, getter: false, setter: false}}, true)

  JSON.mapping({replicas:               {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                selector:               {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                service_name:           {type: String, nilable: false, key: serviceName, getter: false, setter: false},
                template:               {type: ::K8S::V1_6_1::Kubernetes::Api::V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false},
                volume_claim_templates: {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::PersistentVolumeClaim), nilable: true, key: volumeClaimTemplates, getter: false, setter: false}}, true)

  def initialize(@service_name, @template, @replicas = nil, @selector = nil, @volume_claim_templates = nil)
  end
end
