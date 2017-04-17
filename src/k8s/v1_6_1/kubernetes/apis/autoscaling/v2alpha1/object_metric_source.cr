# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricSource
  # metricName is the name of the metric in question.
  property metric_name : String

  # target is the described Kubernetes object.
  property target : ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference

  # targetValue is the target value of the metric (as a quantity).
  property target_value : ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity

  YAML.mapping({metric_name:  {type: String, nilable: false, key: metricName, getter: false, setter: false},
                target:       {type: ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference, nilable: false, key: target, getter: false, setter: false},
                target_value: {type: ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: false, key: targetValue, getter: false, setter: false}}, true)

  JSON.mapping({metric_name:  {type: String, nilable: false, key: metricName, getter: false, setter: false},
                target:       {type: ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference, nilable: false, key: target, getter: false, setter: false},
                target_value: {type: ::K8S::V1_6_1::Apimachinery::Api::Resource::Quantity, nilable: false, key: targetValue, getter: false, setter: false}}, true)

  def initialize(@metric_name, @target, @target_value)
  end
end
