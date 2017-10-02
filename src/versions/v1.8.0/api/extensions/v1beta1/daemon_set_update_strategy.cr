# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Extensions::V1beta1::DaemonSetUpdateStrategy
    # Rolling update config params. Present only if type = "RollingUpdate".
    property rolling_update : Api::Extensions::V1beta1::RollingUpdateDaemonSet | Nil

    # Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is OnDelete.
    property type : String | Nil

    YAML.mapping({
      rolling_update: {type: Api::Extensions::V1beta1::RollingUpdateDaemonSet, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    JSON.mapping({
      rolling_update: {type: Api::Extensions::V1beta1::RollingUpdateDaemonSet, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @rolling_update : Api::Extensions::V1beta1::RollingUpdateDaemonSet | Nil = nil, @type : String | Nil = nil)
    end
  end
end
