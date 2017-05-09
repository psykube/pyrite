# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  class Definitions::V1beta1::CPUTargetUtilization
    # fraction of the requested CPU that should be [utilized/used, e.g. 70 means that 70% of the requested CPU should be in use.](utilized/used, e.g. 70 means that 70% of the requested CPU should be in use.)
    property target_percentage : Int32

    YAML.mapping({target_percentage: {type: Int32, nilable: false, key: targetPercentage, getter: false, setter: false}}, true)

    JSON.mapping({target_percentage: {type: Int32, nilable: false, key: targetPercentage, getter: false, setter: false}}, true)

    def initialize(@target_percentage : Int32? = nil)
    end
  end
end
