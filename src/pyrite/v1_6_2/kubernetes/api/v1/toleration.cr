# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
  class Definitions::Kubernetes::Api::V1::Toleration
    # Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
    property effect : String?

    # Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
    property key : String?

    # Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
    property operator : String?

    # TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
    property toleration_seconds : Int32?

    # Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
    property value : String?

    YAML.mapping({effect:             {type: String, nilable: true, key: effect, getter: false, setter: false},
                  key:                {type: String, nilable: true, key: key, getter: false, setter: false},
                  operator:           {type: String, nilable: true, key: operator, getter: false, setter: false},
                  toleration_seconds: {type: Int32, nilable: true, key: tolerationSeconds, getter: false, setter: false},
                  value:              {type: String, nilable: true, key: value, getter: false, setter: false}}, true)

    JSON.mapping({effect:             {type: String, nilable: true, key: effect, getter: false, setter: false},
                  key:                {type: String, nilable: true, key: key, getter: false, setter: false},
                  operator:           {type: String, nilable: true, key: operator, getter: false, setter: false},
                  toleration_seconds: {type: Int32, nilable: true, key: tolerationSeconds, getter: false, setter: false},
                  value:              {type: String, nilable: true, key: value, getter: false, setter: false}}, true)

    def initialize(@effect : String? = nil, @key : String? = nil, @operator : String? = nil, @toleration_seconds : Int32? = nil, @value : String? = nil)
    end
  end
end
