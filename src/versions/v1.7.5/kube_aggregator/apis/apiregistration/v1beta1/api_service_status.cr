# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIServiceStatus contains derived information about an API server
  class KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceStatus
    # Current service state of apiService.
    property conditions : Array(KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceCondition) | Nil

    YAML.mapping({
      conditions: {type: Array(KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    JSON.mapping({
      conditions: {type: Array(KubeAggregator::Apis::Apiregistration::V1beta1::APIServiceCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
