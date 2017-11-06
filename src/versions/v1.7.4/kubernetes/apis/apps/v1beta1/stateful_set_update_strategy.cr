# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
  class Kubernetes::Apis::Apps::V1beta1::StatefulSetUpdateStrategy
    # RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
    property rolling_update : Kubernetes::Apis::Apps::V1beta1::RollingUpdateStatefulSetStrategy | Nil

    # Type indicates the type of the StatefulSetUpdateStrategy.
    property type : String | Nil

    ::YAML.mapping({
      rolling_update: {type: Kubernetes::Apis::Apps::V1beta1::RollingUpdateStatefulSetStrategy, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      rolling_update: {type: Kubernetes::Apis::Apps::V1beta1::RollingUpdateStatefulSetStrategy, nilable: true, key: "rollingUpdate", getter: false, setter: false},
      type:           {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @rolling_update : Kubernetes::Apis::Apps::V1beta1::RollingUpdateStatefulSetStrategy | Nil = nil, @type : String | Nil = nil)
    end
  end
end
