# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
  class Kubernetes::Api::V1::Toleration
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
    @[::JSON::Field(key: "effect")]
    @[::YAML::Field(key: "effect")]
    property effect : String | Nil

    # Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
    @[::JSON::Field(key: "key")]
    @[::YAML::Field(key: "key")]
    property key : String | Nil

    # Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
    @[::JSON::Field(key: "operator")]
    @[::YAML::Field(key: "operator")]
    property operator : String | Nil

    # TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
    @[::JSON::Field(key: "tolerationSeconds")]
    @[::YAML::Field(key: "tolerationSeconds")]
    property toleration_seconds : Int32 | Nil

    # Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : String | Nil

    def initialize(*, @effect : String | Nil = nil, @key : String | Nil = nil, @operator : String | Nil = nil, @toleration_seconds : Int32 | Nil = nil, @value : String | Nil = nil)
    end
  end
end
