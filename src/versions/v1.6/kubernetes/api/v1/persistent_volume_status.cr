# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeStatus is the current status of a persistent volume.
  class Kubernetes::Api::V1::PersistentVolumeStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A human-readable message indicating details about why the volume is in this state.
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#phase](http://kubernetes.io/docs/user-guide/persistent-volumes#phase)
    @[JSON::Field(key: "phase")]
    @[YAML::Field(key: "phase")]
    property phase : String | Nil

    # Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String | Nil

    def initialize(*, @message : String | Nil = nil, @phase : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
