# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# The node this Taint is attached to has the effect "effect" on any pod that that does not tolerate the Taint.
class Pyrite::V1_6_1::Kubernetes::Api::V1::Taint
  # Required.The effect of the taint on pods that do not tolerate the taint.Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  property effect : String

  # Required.The taint key to be applied to a node.
  property key : String

  # TimeAdded represents the time at which the taint was added.It is only written for NoExecute taints.
  property time_added : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time

  # Required.The taint value corresponding to the taint key.
  property value : String?

  YAML.mapping({effect:     {type: String, nilable: false, key: effect, getter: false, setter: false},
                key:        {type: String, nilable: false, key: key, getter: false, setter: false},
                time_added: {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: timeAdded, getter: false, setter: false},
                value:      {type: String, nilable: true, key: value, getter: false, setter: false}}, true)

  JSON.mapping({effect:     {type: String, nilable: false, key: effect, getter: false, setter: false},
                key:        {type: String, nilable: false, key: key, getter: false, setter: false},
                time_added: {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: timeAdded, getter: false, setter: false},
                value:      {type: String, nilable: true, key: value, getter: false, setter: false}}, true)

  def initialize(@effect, @key, @time_added = nil, @value = nil)
  end
end
