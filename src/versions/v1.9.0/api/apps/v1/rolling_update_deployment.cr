# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Spec to control the desired behavior of rolling update.
  class Api::Apps::V1::RollingUpdateDeployment
    # The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new RC can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new RC can be scaled up further, ensuring that total number of pods running at any time during the update is atmost 130% of desired pods.
    property max_surge : Int32 | String | Nil

    # The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old RC can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old RC can be scaled down further, followed by scaling up the new RC, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.
    property max_unavailable : Int32 | String | Nil

    ::YAML.mapping({
      max_surge:       {type: Int32 | String, nilable: true, key: "maxSurge", getter: false, setter: false},
      max_unavailable: {type: Int32 | String, nilable: true, key: "maxUnavailable", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      max_surge:       {type: Int32 | String, nilable: true, key: "maxSurge", getter: false, setter: false},
      max_unavailable: {type: Int32 | String, nilable: true, key: "maxUnavailable", getter: false, setter: false},
    }, true)

    def initialize(*, @max_surge : Int32 | String | Nil = nil, @max_unavailable : Int32 | String | Nil = nil)
    end
  end
end
