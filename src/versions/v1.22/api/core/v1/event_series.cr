# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  class Api::Core::V1::EventSeries < Kubernetes::Spec
    # Number of occurrences in this series up to the last heartbeat time
    @[::JSON::Field(key: "count")]
    @[::YAML::Field(key: "count")]
    property count : Int32 | Nil

    # Time of the last occurrence observed
    @[::JSON::Field(key: "lastObservedTime")]
    @[::YAML::Field(key: "lastObservedTime")]
    property last_observed_time : Time | Nil

    def initialize(*, @count : Int32 | Nil = nil, @last_observed_time : Time | Nil = nil)
    end
  end
end
