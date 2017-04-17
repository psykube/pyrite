# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second).The values will be averaged together before being compared to the target value.
class K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricSource
  # metricName is the name of the metric in question
  property metric_name : String

  # targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  property target_average_value : ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity

  YAML.mapping({metric_name:          {type: String, nilable: false, key: metricName, getter: false, setter: false},
                target_average_value: {type: ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: false, key: targetAverageValue, getter: false, setter: false}}, true)

  JSON.mapping({metric_name:          {type: String, nilable: false, key: metricName, getter: false, setter: false},
                target_average_value: {type: ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: false, key: targetAverageValue, getter: false, setter: false}}, true)

  def initialize(@metric_name, @target_average_value)
  end
end
