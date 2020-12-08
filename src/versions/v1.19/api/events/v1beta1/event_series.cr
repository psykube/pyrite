# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  class Api::Events::V1beta1::EventSeries
    # count is the number of occurrences in this series up to the last heartbeat time.
    property count : Int32

    # lastObservedTime is the time when last Event from the series was seen before last heartbeat.
    property last_observed_time : Time

    ::YAML.mapping({
      count:              {type: Int32, nilable: false, key: "count", getter: false, setter: false},
      last_observed_time: {type: Time, nilable: false, key: "lastObservedTime", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      count:              {type: Int32, nilable: false, key: "count", getter: false, setter: false},
      last_observed_time: {type: Time, nilable: false, key: "lastObservedTime", getter: false, setter: false},
    }, true)

    def initialize(*, @count : Int32, @last_observed_time : Time)
    end
  end
end
