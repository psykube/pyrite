# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Condition contains details for one aspect of the current state of this API Resource.
  class Apimachinery::Apis::Meta::V1::Condition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
    @[JSON::Field(key: "lastTransitionTime")]
    @[YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time

    # message is a human readable message indicating details about the transition. This may be an empty string.
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String

    # observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
    @[JSON::Field(key: "observedGeneration")]
    @[YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String

    # status of the condition, one of True, False, Unknown.
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : String

    # type of condition in CamelCase or in [foo.example.com/CamelCase.](foo.example.com/CamelCase.)
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_transition_time : Time, @message : String, @observed_generation : Int32 | Nil = nil, @reason : String, @status : String, @type : String)
    end
  end
end
