# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIServiceStatus contains derived information about an API server
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Current service state of apiService.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition) | Nil

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
