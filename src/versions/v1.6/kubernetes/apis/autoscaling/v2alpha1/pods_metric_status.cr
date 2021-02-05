# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  class Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    @[JSON::Field(key: "currentAverageValue")]
    @[YAML::Field(key: "currentAverageValue")]
    property current_average_value : Int32

    # metricName is the name of the metric in question
    @[JSON::Field(key: "metricName")]
    @[YAML::Field(key: "metricName")]
    property metric_name : String

    def initialize(*, @current_average_value : Int32, @metric_name : String)
    end
  end
end
