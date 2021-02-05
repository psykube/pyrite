# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continously for some time.](was/is happening continously for some time.)
  class Api::Events::V1beta1::EventSeries
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Number of occurrences in this series up to the last heartbeat time
    @[JSON::Field(key: "count")]
    @[YAML::Field(key: "count")]
    property count : Int32

    # Time when last Event from the series was seen before last heartbeat.
    @[JSON::Field(key: "lastObservedTime")]
    @[YAML::Field(key: "lastObservedTime")]
    property last_observed_time : Time

    # Information whether this series is ongoing or finished.
    @[JSON::Field(key: "state")]
    @[YAML::Field(key: "state")]
    property state : String

    def initialize(*, @count : Int32, @last_observed_time : Time, @state : String)
    end
  end
end
