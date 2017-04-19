# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodStatus represents information about the status of a pod. Status may trail the actual state of a system.
class Pyrite::V1_6_0::Kubernetes::Api::V1::PodStatus
  # Current service state of pod. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
  property conditions : Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::PodCondition)?

  # The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [http://kubernetes.io/docs/user-guide/pod-states#container-statuses](http://kubernetes.io/docs/user-guide/pod-states#container-statuses)
  property container_statuses : Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStatus)?

  # IP address of the host to which the pod is assigned. Empty if not yet scheduled.
  property host_ip : String?

  # The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: [http://kubernetes.io/docs/user-guide/pod-states#container-statuses](http://kubernetes.io/docs/user-guide/pod-states#container-statuses)
  property init_container_statuses : Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStatus)?

  # A human readable message indicating details about why the pod is in this condition.
  property message : String?

  # Current condition of the pod. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-phase](http://kubernetes.io/docs/user-guide/pod-states#pod-phase)
  property phase : String?

  # IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  property pod_ip : String?

  # The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: [https://github.com/kubernetes/kubernetes/blob/master/docs/design/resource-qos.md](https://github.com/kubernetes/kubernetes/blob/master/docs/design/resource-qos.md)
  property qos_class : String?

  # A brief CamelCase message indicating details about why the pod is in this state. e.g. 'OutOfDisk'
  property reason : String?

  # RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
  property start_time : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Time

  YAML.mapping({conditions:              {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::PodCondition), nilable: true, key: conditions, getter: false, setter: false},
                container_statuses:      {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStatus), nilable: true, key: containerStatuses, getter: false, setter: false},
                host_ip:                 {type: String, nilable: true, key: hostIP, getter: false, setter: false},
                init_container_statuses: {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStatus), nilable: true, key: initContainerStatuses, getter: false, setter: false},
                message:                 {type: String, nilable: true, key: message, getter: false, setter: false},
                phase:                   {type: String, nilable: true, key: phase, getter: false, setter: false},
                pod_ip:                  {type: String, nilable: true, key: podIP, getter: false, setter: false},
                qos_class:               {type: String, nilable: true, key: qosClass, getter: false, setter: false},
                reason:                  {type: String, nilable: true, key: reason, getter: false, setter: false},
                start_time:              {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startTime, getter: false, setter: false}}, true)

  JSON.mapping({conditions:              {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::PodCondition), nilable: true, key: conditions, getter: false, setter: false},
                container_statuses:      {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStatus), nilable: true, key: containerStatuses, getter: false, setter: false},
                host_ip:                 {type: String, nilable: true, key: hostIP, getter: false, setter: false},
                init_container_statuses: {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStatus), nilable: true, key: initContainerStatuses, getter: false, setter: false},
                message:                 {type: String, nilable: true, key: message, getter: false, setter: false},
                phase:                   {type: String, nilable: true, key: phase, getter: false, setter: false},
                pod_ip:                  {type: String, nilable: true, key: podIP, getter: false, setter: false},
                qos_class:               {type: String, nilable: true, key: qosClass, getter: false, setter: false},
                reason:                  {type: String, nilable: true, key: reason, getter: false, setter: false},
                start_time:              {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startTime, getter: false, setter: false}}, true)

  def initialize(@conditions : Array? = nil, @container_statuses : Array? = nil, @host_ip : String? = nil, @init_container_statuses : Array? = nil, @message : String? = nil, @phase : String? = nil, @pod_ip : String? = nil, @qos_class : String? = nil, @reason : String? = nil, @start_time : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Time = nil)
  end
end
