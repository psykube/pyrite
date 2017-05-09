# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # LimitRangeSpec defines a [min/max usage limit for resources that match on kind.](min/max usage limit for resources that match on kind.)
  class Definitions::V1::LimitRangeSpec
    # Limits is the list of LimitRangeItem objects that are enforced.
    property limits : Array(V1::LimitRangeItem)

    YAML.mapping({limits: {type: Array(V1::LimitRangeItem), nilable: false, key: limits, getter: false, setter: false}}, true)

    JSON.mapping({limits: {type: Array(V1::LimitRangeItem), nilable: false, key: limits, getter: false, setter: false}}, true)

    def initialize(@limits : Array? = nil)
    end
  end
end
