# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # DaemonSetStatus represents the current status of a daemon set.
  class Definitions::V1beta1::DaemonSetStatus
    # CurrentNumberScheduled is the number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [http://releases.k8s.io/HEAD/docs/admin/daemons.md](http://releases.k8s.io/HEAD/docs/admin/daemons.md)
    property current_number_scheduled : Int32

    # DesiredNumberScheduled is the total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [http://releases.k8s.io/HEAD/docs/admin/daemons.md](http://releases.k8s.io/HEAD/docs/admin/daemons.md)
    property desired_number_scheduled : Int32

    # NumberMisscheduled is the number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [http://releases.k8s.io/HEAD/docs/admin/daemons.md](http://releases.k8s.io/HEAD/docs/admin/daemons.md)
    property number_misscheduled : Int32

    # NumberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
    property number_ready : Int32

    YAML.mapping({current_number_scheduled: {type: Int32, nilable: false, key: currentNumberScheduled, getter: false, setter: false},
                  desired_number_scheduled: {type: Int32, nilable: false, key: desiredNumberScheduled, getter: false, setter: false},
                  number_misscheduled:      {type: Int32, nilable: false, key: numberMisscheduled, getter: false, setter: false},
                  number_ready:             {type: Int32, nilable: false, key: numberReady, getter: false, setter: false}}, true)

    JSON.mapping({current_number_scheduled: {type: Int32, nilable: false, key: currentNumberScheduled, getter: false, setter: false},
                  desired_number_scheduled: {type: Int32, nilable: false, key: desiredNumberScheduled, getter: false, setter: false},
                  number_misscheduled:      {type: Int32, nilable: false, key: numberMisscheduled, getter: false, setter: false},
                  number_ready:             {type: Int32, nilable: false, key: numberReady, getter: false, setter: false}}, true)

    def initialize(@current_number_scheduled : Int32? = nil, @desired_number_scheduled : Int32? = nil, @number_misscheduled : Int32? = nil, @number_ready : Int32? = nil)
    end
  end
end
