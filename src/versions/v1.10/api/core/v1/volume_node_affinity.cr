# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
  class Api::Core::V1::VolumeNodeAffinity
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Required specifies hard node constraints that must be met.
    @[::JSON::Field(key: "required")]
    @[::YAML::Field(key: "required")]
    property required : Api::Core::V1::NodeSelector | Nil

    def initialize(*, @required : Api::Core::V1::NodeSelector | Nil = nil)
    end
  end
end
