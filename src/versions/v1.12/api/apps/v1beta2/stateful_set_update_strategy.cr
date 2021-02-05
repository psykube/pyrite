# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
  class Api::Apps::V1beta2::StatefulSetUpdateStrategy
    include ::JSON::Serializable
    include ::YAML::Serializable

    # RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
    @[::JSON::Field(key: "rollingUpdate")]
    @[::YAML::Field(key: "rollingUpdate")]
    property rolling_update : Api::Apps::V1beta2::RollingUpdateStatefulSetStrategy | Nil

    # Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @rolling_update : Api::Apps::V1beta2::RollingUpdateStatefulSetStrategy | Nil = nil, @type : String | Nil = nil)
    end
  end
end
