# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfigurationSpec specifies the configuration of a priority level.
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
    @[JSON::Field(key: "limited")]
    @[YAML::Field(key: "limited")]
    property limited : Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration | Nil

    # `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String

    def initialize(*, @limited : Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration | Nil = nil, @type : String)
    end
  end
end
