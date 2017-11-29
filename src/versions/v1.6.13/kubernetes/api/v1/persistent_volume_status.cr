# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeStatus is the current status of a persistent volume.
  class Kubernetes::Api::V1::PersistentVolumeStatus
    # A human-readable message indicating details about why the volume is in this state.
    property message : String | Nil

    # Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#phase](http://kubernetes.io/docs/user-guide/persistent-volumes#phase)
    property phase : String | Nil

    # Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
    property reason : String | Nil

    ::YAML.mapping({
      message: {type: String, nilable: true, key: "message", getter: false, setter: false},
      phase:   {type: String, nilable: true, key: "phase", getter: false, setter: false},
      reason:  {type: String, nilable: true, key: "reason", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      message: {type: String, nilable: true, key: "message", getter: false, setter: false},
      phase:   {type: String, nilable: true, key: "phase", getter: false, setter: false},
      reason:  {type: String, nilable: true, key: "reason", getter: false, setter: false},
    }, true)

    def initialize(*, @message : String | Nil = nil, @phase : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
