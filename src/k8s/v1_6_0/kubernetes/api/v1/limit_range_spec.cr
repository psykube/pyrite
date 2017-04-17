# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# LimitRangeSpec defines a min/max usage limit for resources that match on kind.
class K8S::V1_6_0::Kubernetes::Api::V1::LimitRangeSpec
  # Limits is the list of LimitRangeItem objects that are enforced.
  property limits : Array(::K8S::V1_6_0::Kubernetes::Api::V1::LimitRangeItem)

  YAML.mapping({limits: {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::LimitRangeItem), nilable: false, key: limits, getter: false, setter: false}}, true)

  JSON.mapping({limits: {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::LimitRangeItem), nilable: false, key: limits, getter: false, setter: false}}, true)

  def initialize(@limits)
  end
end
