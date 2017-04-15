require "yaml"
require "json"

# DaemonSetStatus represents the current status of a daemon set.
class K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus
  # The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod.More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md
  property current_number_scheduled : Int32

  # The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod).More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md
  property desired_number_scheduled : Int32

  # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  property number_available : Int32?

  # The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod.More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md
  property number_misscheduled : Int32

  # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
  property number_ready : Int32

  # The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  property number_unavailable : Int32?

  # The most recent generation observed by the daemon set controller.
  property observed_generation : Int32?

  # The total number of nodes that are running updated daemon pod
  property updated_number_scheduled : Int32?

  YAML.mapping({current_number_scheduled: {type: Int32, nilable: false, key: currentNumberScheduled, getter: false, setter: false},
                desired_number_scheduled: {type: Int32, nilable: false, key: desiredNumberScheduled, getter: false, setter: false},
                number_available:         {type: Int32, nilable: true, key: numberAvailable, getter: false, setter: false},
                number_misscheduled:      {type: Int32, nilable: false, key: numberMisscheduled, getter: false, setter: false},
                number_ready:             {type: Int32, nilable: false, key: numberReady, getter: false, setter: false},
                number_unavailable:       {type: Int32, nilable: true, key: numberUnavailable, getter: false, setter: false},
                observed_generation:      {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                updated_number_scheduled: {type: Int32, nilable: true, key: updatedNumberScheduled, getter: false, setter: false}}, true)

  JSON.mapping({current_number_scheduled: {type: Int32, nilable: false, key: currentNumberScheduled, getter: false, setter: false},
                desired_number_scheduled: {type: Int32, nilable: false, key: desiredNumberScheduled, getter: false, setter: false},
                number_available:         {type: Int32, nilable: true, key: numberAvailable, getter: false, setter: false},
                number_misscheduled:      {type: Int32, nilable: false, key: numberMisscheduled, getter: false, setter: false},
                number_ready:             {type: Int32, nilable: false, key: numberReady, getter: false, setter: false},
                number_unavailable:       {type: Int32, nilable: true, key: numberUnavailable, getter: false, setter: false},
                observed_generation:      {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                updated_number_scheduled: {type: Int32, nilable: true, key: updatedNumberScheduled, getter: false, setter: false}}, true)

  def initialize(@current_number_scheduled, @desired_number_scheduled, @number_misscheduled, @number_ready, @number_available = nil, @number_unavailable = nil, @observed_generation = nil, @updated_number_scheduled = nil)
  end
end
