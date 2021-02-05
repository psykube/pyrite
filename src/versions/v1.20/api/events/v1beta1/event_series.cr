# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  class Api::Events::V1beta1::EventSeries
    include ::JSON::Serializable
    include ::YAML::Serializable

    # count is the number of occurrences in this series up to the last heartbeat time.
    @[JSON::Field(key: "count")]
    @[YAML::Field(key: "count")]
    property count : Int32

    # lastObservedTime is the time when last Event from the series was seen before last heartbeat.
    @[JSON::Field(key: "lastObservedTime")]
    @[YAML::Field(key: "lastObservedTime")]
    property last_observed_time : Time

    def initialize(*, @count : Int32, @last_observed_time : Time)
    end
  end
end
