# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LimitRangeSpec defines a [min/max usage limit for resources that match on kind.](min/max usage limit for resources that match on kind.)
  class Api::Core::V1::LimitRangeSpec
    # Limits is the list of LimitRangeItem objects that are enforced.
    property limits : Array(Api::Core::V1::LimitRangeItem)

    ::YAML.mapping({
      limits: {type: Array(Api::Core::V1::LimitRangeItem), nilable: false, key: "limits", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      limits: {type: Array(Api::Core::V1::LimitRangeItem), nilable: false, key: "limits", getter: false, setter: false},
    }, true)

    def initialize(*, @limits : Array | Nil = nil)
    end
  end
end
