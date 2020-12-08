# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
  class Api::Core::V1::PodStatus
    # Current service state of pod. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)
    property conditions : Array(Api::Core::V1::PodCondition) | Nil

    # The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)
    property container_statuses : Array(Api::Core::V1::ContainerStatus) | Nil

    # Status for any ephemeral containers that have run in this pod. This field is alpha-level and is only populated by servers that enable the EphemeralContainers feature.
    property ephemeral_container_statuses : Array(Api::Core::V1::ContainerStatus) | Nil

    # IP address of the host to which the pod is assigned. Empty if not yet scheduled.
    property host_ip : String | Nil

    # The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)
    property init_container_statuses : Array(Api::Core::V1::ContainerStatus) | Nil

    # A human readable message indicating details about why the pod is in this condition.
    property message : String | Nil

    # nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
    property nominated_node_name : String | Nil

    # The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
    #
    # Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
    #
    # More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase)
    property phase : String | Nil

    # IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    property pod_ip : String | Nil

    # podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
    property pod_ips : Array(Api::Core::V1::PodIP) | Nil

    # The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: [https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md)
    property qos_class : String | Nil

    # A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
    property reason : String | Nil

    # RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
    property start_time : Time | Nil

    ::YAML.mapping({
      conditions:                   {type: Array(Api::Core::V1::PodCondition), nilable: true, key: "conditions", getter: false, setter: false},
      container_statuses:           {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "containerStatuses", getter: false, setter: false},
      ephemeral_container_statuses: {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "ephemeralContainerStatuses", getter: false, setter: false},
      host_ip:                      {type: String, nilable: true, key: "hostIP", getter: false, setter: false},
      init_container_statuses:      {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "initContainerStatuses", getter: false, setter: false},
      message:                      {type: String, nilable: true, key: "message", getter: false, setter: false},
      nominated_node_name:          {type: String, nilable: true, key: "nominatedNodeName", getter: false, setter: false},
      phase:                        {type: String, nilable: true, key: "phase", getter: false, setter: false},
      pod_ip:                       {type: String, nilable: true, key: "podIP", getter: false, setter: false},
      pod_ips:                      {type: Array(Api::Core::V1::PodIP), nilable: true, key: "podIPs", getter: false, setter: false},
      qos_class:                    {type: String, nilable: true, key: "qosClass", getter: false, setter: false},
      reason:                       {type: String, nilable: true, key: "reason", getter: false, setter: false},
      start_time:                   {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions:                   {type: Array(Api::Core::V1::PodCondition), nilable: true, key: "conditions", getter: false, setter: false},
      container_statuses:           {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "containerStatuses", getter: false, setter: false},
      ephemeral_container_statuses: {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "ephemeralContainerStatuses", getter: false, setter: false},
      host_ip:                      {type: String, nilable: true, key: "hostIP", getter: false, setter: false},
      init_container_statuses:      {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "initContainerStatuses", getter: false, setter: false},
      message:                      {type: String, nilable: true, key: "message", getter: false, setter: false},
      nominated_node_name:          {type: String, nilable: true, key: "nominatedNodeName", getter: false, setter: false},
      phase:                        {type: String, nilable: true, key: "phase", getter: false, setter: false},
      pod_ip:                       {type: String, nilable: true, key: "podIP", getter: false, setter: false},
      pod_ips:                      {type: Array(Api::Core::V1::PodIP), nilable: true, key: "podIPs", getter: false, setter: false},
      qos_class:                    {type: String, nilable: true, key: "qosClass", getter: false, setter: false},
      reason:                       {type: String, nilable: true, key: "reason", getter: false, setter: false},
      start_time:                   {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil, @container_statuses : Array | Nil = nil, @ephemeral_container_statuses : Array | Nil = nil, @host_ip : String | Nil = nil, @init_container_statuses : Array | Nil = nil, @message : String | Nil = nil, @nominated_node_name : String | Nil = nil, @phase : String | Nil = nil, @pod_ip : String | Nil = nil, @pod_ips : Array | Nil = nil, @qos_class : String | Nil = nil, @reason : String | Nil = nil, @start_time : Time | Nil = nil)
    end
  end
end
