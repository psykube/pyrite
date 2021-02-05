# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
  class Api::Apps::V1beta2::DaemonSetUpdateStrategy
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Rolling update config params. Present only if type = "RollingUpdate".
    @[::JSON::Field(key: "rollingUpdate")]
    @[::YAML::Field(key: "rollingUpdate")]
    property rolling_update : Api::Apps::V1beta2::RollingUpdateDaemonSet | Nil

    # Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @rolling_update : Api::Apps::V1beta2::RollingUpdateDaemonSet | Nil = nil, @type : String | Nil = nil)
    end
  end
end
