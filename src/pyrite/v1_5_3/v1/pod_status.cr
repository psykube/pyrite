# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # PodStatus represents information about the status of a pod. Status may trail the actual state of a system.
  class Definitions::V1::PodStatus
    # Current service state of pod. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-conditions](http://kubernetes.io/docs/user-guide/pod-states#pod-conditions)
    property conditions : Array(V1::PodCondition)?

    # The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [http://kubernetes.io/docs/user-guide/pod-states#container-statuses](http://kubernetes.io/docs/user-guide/pod-states#container-statuses)
    property container_statuses : Array(V1::ContainerStatus)?

    # IP address of the host to which the pod is assigned. Empty if not yet scheduled.
    property host_ip : String?

    # A human readable message indicating details about why the pod is in this condition.
    property message : String?

    # Current condition of the pod. More info: [http://kubernetes.io/docs/user-guide/pod-states#pod-phase](http://kubernetes.io/docs/user-guide/pod-states#pod-phase)
    property phase : String?

    # IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    property pod_ip : String?

    # A brief CamelCase message indicating details about why the pod is in this state. e.g. 'OutOfDisk'
    property reason : String?

    # RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
    property start_time : Unversioned::Time

    YAML.mapping({conditions:         {type: Array(V1::PodCondition), nilable: true, key: conditions, getter: false, setter: false},
                  container_statuses: {type: Array(V1::ContainerStatus), nilable: true, key: containerStatuses, getter: false, setter: false},
                  host_ip:            {type: String, nilable: true, key: hostIP, getter: false, setter: false},
                  message:            {type: String, nilable: true, key: message, getter: false, setter: false},
                  phase:              {type: String, nilable: true, key: phase, getter: false, setter: false},
                  pod_ip:             {type: String, nilable: true, key: podIP, getter: false, setter: false},
                  reason:             {type: String, nilable: true, key: reason, getter: false, setter: false},
                  start_time:         {type: Unversioned::Time, nilable: true, key: startTime, getter: false, setter: false}}, true)

    JSON.mapping({conditions:         {type: Array(V1::PodCondition), nilable: true, key: conditions, getter: false, setter: false},
                  container_statuses: {type: Array(V1::ContainerStatus), nilable: true, key: containerStatuses, getter: false, setter: false},
                  host_ip:            {type: String, nilable: true, key: hostIP, getter: false, setter: false},
                  message:            {type: String, nilable: true, key: message, getter: false, setter: false},
                  phase:              {type: String, nilable: true, key: phase, getter: false, setter: false},
                  pod_ip:             {type: String, nilable: true, key: podIP, getter: false, setter: false},
                  reason:             {type: String, nilable: true, key: reason, getter: false, setter: false},
                  start_time:         {type: Unversioned::Time, nilable: true, key: startTime, getter: false, setter: false}}, true)

    def initialize(@conditions : Array? = nil, @container_statuses : Array? = nil, @host_ip : String? = nil, @message : String? = nil, @phase : String? = nil, @pod_ip : String? = nil, @reason : String? = nil, @start_time : Unversioned::Time = nil)
    end
  end
end
