# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetStatus represents the current status of a daemon set.
  class Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus < Kubernetes::Spec
    # The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [http://releases.k8s.io/HEAD/docs/admin/daemons.md](http://releases.k8s.io/HEAD/docs/admin/daemons.md)
    @[::JSON::Field(key: "currentNumberScheduled")]
    @[::YAML::Field(key: "currentNumberScheduled")]
    property current_number_scheduled : Int32

    # The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [http://releases.k8s.io/HEAD/docs/admin/daemons.md](http://releases.k8s.io/HEAD/docs/admin/daemons.md)
    @[::JSON::Field(key: "desiredNumberScheduled")]
    @[::YAML::Field(key: "desiredNumberScheduled")]
    property desired_number_scheduled : Int32

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
    @[::JSON::Field(key: "numberAvailable")]
    @[::YAML::Field(key: "numberAvailable")]
    property number_available : Int32 | Nil

    # The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [http://releases.k8s.io/HEAD/docs/admin/daemons.md](http://releases.k8s.io/HEAD/docs/admin/daemons.md)
    @[::JSON::Field(key: "numberMisscheduled")]
    @[::YAML::Field(key: "numberMisscheduled")]
    property number_misscheduled : Int32

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
    @[::JSON::Field(key: "numberReady")]
    @[::YAML::Field(key: "numberReady")]
    property number_ready : Int32

    # The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
    @[::JSON::Field(key: "numberUnavailable")]
    @[::YAML::Field(key: "numberUnavailable")]
    property number_unavailable : Int32 | Nil

    # The most recent generation observed by the daemon set controller.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # The total number of nodes that are running updated daemon pod
    @[::JSON::Field(key: "updatedNumberScheduled")]
    @[::YAML::Field(key: "updatedNumberScheduled")]
    property updated_number_scheduled : Int32 | Nil

    def initialize(*, @current_number_scheduled : Int32, @desired_number_scheduled : Int32, @number_available : Int32 | Nil = nil, @number_misscheduled : Int32, @number_ready : Int32, @number_unavailable : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @updated_number_scheduled : Int32 | Nil = nil)
    end
  end
end
