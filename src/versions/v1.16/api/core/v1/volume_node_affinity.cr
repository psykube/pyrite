# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
  class Api::Core::V1::VolumeNodeAffinity
    # Required specifies hard node constraints that must be met.
    property required : Api::Core::V1::NodeSelector | Nil

    ::YAML.mapping({
      required: {type: Api::Core::V1::NodeSelector, nilable: true, key: "required", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      required: {type: Api::Core::V1::NodeSelector, nilable: true, key: "required", getter: false, setter: false},
    }, true)

    def initialize(*, @required : Api::Core::V1::NodeSelector | Nil = nil)
    end
  end
end
