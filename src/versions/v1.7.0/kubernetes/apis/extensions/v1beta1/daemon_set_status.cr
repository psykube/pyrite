# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetStatus represents the current status of a daemon set.
  class Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus
    # Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    property collision_count : Int32 | Nil

    # The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    property current_number_scheduled : Int32

    # The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    property desired_number_scheduled : Int32

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
    property number_available : Int32 | Nil

    # The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    property number_misscheduled : Int32

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
    property number_ready : Int32

    # The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
    property number_unavailable : Int32 | Nil

    # The most recent generation observed by the daemon set controller.
    property observed_generation : Int32 | Nil

    # The total number of nodes that are running updated daemon pod
    property updated_number_scheduled : Int32 | Nil

    YAML.mapping({
      collision_count:          {type: Int32, nilable: true, key: "collisionCount", getter: false, setter: false},
      current_number_scheduled: {type: Int32, nilable: false, key: "currentNumberScheduled", getter: false, setter: false},
      desired_number_scheduled: {type: Int32, nilable: false, key: "desiredNumberScheduled", getter: false, setter: false},
      number_available:         {type: Int32, nilable: true, key: "numberAvailable", getter: false, setter: false},
      number_misscheduled:      {type: Int32, nilable: false, key: "numberMisscheduled", getter: false, setter: false},
      number_ready:             {type: Int32, nilable: false, key: "numberReady", getter: false, setter: false},
      number_unavailable:       {type: Int32, nilable: true, key: "numberUnavailable", getter: false, setter: false},
      observed_generation:      {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      updated_number_scheduled: {type: Int32, nilable: true, key: "updatedNumberScheduled", getter: false, setter: false},
    }, true)

    JSON.mapping({
      collision_count:          {type: Int32, nilable: true, key: "collisionCount", getter: false, setter: false},
      current_number_scheduled: {type: Int32, nilable: false, key: "currentNumberScheduled", getter: false, setter: false},
      desired_number_scheduled: {type: Int32, nilable: false, key: "desiredNumberScheduled", getter: false, setter: false},
      number_available:         {type: Int32, nilable: true, key: "numberAvailable", getter: false, setter: false},
      number_misscheduled:      {type: Int32, nilable: false, key: "numberMisscheduled", getter: false, setter: false},
      number_ready:             {type: Int32, nilable: false, key: "numberReady", getter: false, setter: false},
      number_unavailable:       {type: Int32, nilable: true, key: "numberUnavailable", getter: false, setter: false},
      observed_generation:      {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      updated_number_scheduled: {type: Int32, nilable: true, key: "updatedNumberScheduled", getter: false, setter: false},
    }, true)

    def initialize(*, @collision_count : Int32 | Nil = nil, @current_number_scheduled : Int32 | Nil = nil, @desired_number_scheduled : Int32 | Nil = nil, @number_available : Int32 | Nil = nil, @number_misscheduled : Int32 | Nil = nil, @number_ready : Int32 | Nil = nil, @number_unavailable : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @updated_number_scheduled : Int32 | Nil = nil)
    end
  end
end
