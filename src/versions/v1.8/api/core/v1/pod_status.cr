# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodStatus represents information about the status of a pod. Status may trail the actual state of a system.
  class Api::Core::V1::PodStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Current service state of pod. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Core::V1::PodCondition) | Nil

    # The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)
    @[::JSON::Field(key: "containerStatuses")]
    @[::YAML::Field(key: "containerStatuses")]
    property container_statuses : Array(Api::Core::V1::ContainerStatus) | Nil

    # IP address of the host to which the pod is assigned. Empty if not yet scheduled.
    @[::JSON::Field(key: "hostIP")]
    @[::YAML::Field(key: "hostIP")]
    property host_ip : String | Nil

    # The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)
    @[::JSON::Field(key: "initContainerStatuses")]
    @[::YAML::Field(key: "initContainerStatuses")]
    property init_container_statuses : Array(Api::Core::V1::ContainerStatus) | Nil

    # A human readable message indicating details about why the pod is in this condition.
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # Current condition of the pod. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase)
    @[::JSON::Field(key: "phase")]
    @[::YAML::Field(key: "phase")]
    property phase : String | Nil

    # IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    @[::JSON::Field(key: "podIP")]
    @[::YAML::Field(key: "podIP")]
    property pod_ip : String | Nil

    # The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: [https://github.com/kubernetes/kubernetes/blob/master/docs/design/resource-qos.md](https://github.com/kubernetes/kubernetes/blob/master/docs/design/resource-qos.md)
    @[::JSON::Field(key: "qosClass")]
    @[::YAML::Field(key: "qosClass")]
    property qos_class : String | Nil

    # A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    # RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
    @[::JSON::Field(key: "startTime")]
    @[::YAML::Field(key: "startTime")]
    property start_time : Time | Nil

    def initialize(*, @conditions : Array | Nil = nil, @container_statuses : Array | Nil = nil, @host_ip : String | Nil = nil, @init_container_statuses : Array | Nil = nil, @message : String | Nil = nil, @phase : String | Nil = nil, @pod_ip : String | Nil = nil, @qos_class : String | Nil = nil, @reason : String | Nil = nil, @start_time : Time | Nil = nil)
    end
  end
end
