# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AllowedFlexVolume represents a single Flexvolume that is allowed to be used. Deprecated: use AllowedFlexVolume from policy API Group instead.
  class Api::Extensions::V1beta1::AllowedFlexVolume < Kubernetes::Spec
    # driver is the name of the Flexvolume driver.
    @[::JSON::Field(key: "driver")]
    @[::YAML::Field(key: "driver")]
    property driver : String

    def initialize(*, @driver : String)
    end
  end
end
