# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # ReplicaSetSpec is the specification of a ReplicaSet.
  class Definitions::V1beta1::ReplicaSetSpec
    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    property min_ready_seconds : Int32?

    # Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller](http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller)
    property replicas : Int32?

    # Selector is a label query over pods that should match the replica count. If the selector is empty, it is defaulted to the labels present on the pod template. Label keys and values that must match in order to be controlled by this replica set. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    property selector : Unversioned::LabelSelector

    # Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: [http://kubernetes.io/docs/user-guide/replication-controller#pod-template](http://kubernetes.io/docs/user-guide/replication-controller#pod-template)
    property template : V1::PodTemplateSpec

    YAML.mapping({min_ready_seconds: {type: Int32, nilable: true, key: minReadySeconds, getter: false, setter: false},
                  replicas:          {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                  selector:          {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  template:          {type: V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false}}, true)

    JSON.mapping({min_ready_seconds: {type: Int32, nilable: true, key: minReadySeconds, getter: false, setter: false},
                  replicas:          {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                  selector:          {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  template:          {type: V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false}}, true)

    def initialize(@min_ready_seconds : Int32? = nil, @replicas : Int32? = nil, @selector : Unversioned::LabelSelector = nil, @template : V1::PodTemplateSpec = nil)
    end
  end
end
