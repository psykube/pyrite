# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continously for some time.](was/is happening continously for some time.)
  class Api::Events::V1beta1::EventSeries
    # Number of occurrences in this series up to the last heartbeat time
    property count : Int32

    # Time when last Event from the series was seen before last heartbeat.
    property last_observed_time : Apimachinery::Apis::Meta::V1::MicroTime

    # Information whether this series is ongoing or finished.
    property state : String

    ::YAML.mapping({
      count:              {type: Int32, nilable: false, key: "count", getter: false, setter: false},
      last_observed_time: {type: Apimachinery::Apis::Meta::V1::MicroTime, nilable: false, key: "lastObservedTime", getter: false, setter: false},
      state:              {type: String, nilable: false, key: "state", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      count:              {type: Int32, nilable: false, key: "count", getter: false, setter: false},
      last_observed_time: {type: Apimachinery::Apis::Meta::V1::MicroTime, nilable: false, key: "lastObservedTime", getter: false, setter: false},
      state:              {type: String, nilable: false, key: "state", getter: false, setter: false},
    }, true)

    def initialize(*, @count : Int32 | Nil = nil, @last_observed_time : Apimachinery::Apis::Meta::V1::MicroTime | Nil = nil, @state : String | Nil = nil)
    end
  end
end
