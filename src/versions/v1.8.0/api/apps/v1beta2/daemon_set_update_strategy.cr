# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
  class Api::Apps::V1beta2::DaemonSetUpdateStrategy
    # Rolling update config params. Present only if type = "RollingUpdate".
    property rolling_update : Api::Apps::V1beta2::RollingUpdateDaemonSet | Nil

    # Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
    property type : String | Nil

    ::YAML.mapping({
      rolling_update: {type: Api::Apps::V1beta2::RollingUpdateDaemonSet, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      rolling_update: {type: Api::Apps::V1beta2::RollingUpdateDaemonSet, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @rolling_update : Api::Apps::V1beta2::RollingUpdateDaemonSet | Nil = nil, @type : String | Nil = nil)
    end
  end
end
