# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ReplicationControllerSpec is the specification of a replication controller.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ReplicationControllerSpec
  # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available.Defaults to 0 (pod will be considered available as soon as it is ready)
  property min_ready_seconds : Int32?

  # Replicas is the number of desired replicas.This is a pointer to distinguish between explicit zero and unspecified.Defaults to 1.More info: http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller
  property replicas : Int32?

  # Selector is a label query over pods that should match the Replicas count.If Selector is empty, it is defaulted to the labels present on the Pod template.Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template.More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  property selector : Hash(String, String)?

  # Template is the object that describes the pod that will be created if insufficient replicas are detected.This takes precedence over a TemplateRef.More info: http://kubernetes.io/docs/user-guide/replication-controller#pod-template
  property template : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec

  YAML.mapping({min_ready_seconds: {type: Int32, nilable: true, key: minReadySeconds, getter: false, setter: false},
                replicas:          {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                selector:          {type: Hash(String, String), nilable: true, key: selector, getter: false, setter: false},
                template:          {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false}}, true)

  JSON.mapping({min_ready_seconds: {type: Int32, nilable: true, key: minReadySeconds, getter: false, setter: false},
                replicas:          {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                selector:          {type: Hash(String, String), nilable: true, key: selector, getter: false, setter: false},
                template:          {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false}}, true)

  def initialize(@min_ready_seconds = nil, @replicas = nil, @selector = nil, @template = nil)
  end
end
