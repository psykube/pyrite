# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
  class Api::Extensions::V1beta1::AllowedCSIDriver
    # Name is the registered name of the CSI driver
    property name : String

    ::YAML.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String)
    end
  end
end
