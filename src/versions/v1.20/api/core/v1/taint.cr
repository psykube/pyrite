# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
  class Api::Core::V1::Taint < Kubernetes::Spec
    # Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
    @[::JSON::Field(key: "effect")]
    @[::YAML::Field(key: "effect")]
    property effect : String

    # Required. The taint key to be applied to a node.
    @[::JSON::Field(key: "key")]
    @[::YAML::Field(key: "key")]
    property key : String

    # TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
    @[::JSON::Field(key: "timeAdded")]
    @[::YAML::Field(key: "timeAdded")]
    property time_added : Time | Nil

    # The taint value corresponding to the taint key.
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : String | Nil

    def initialize(*, @effect : String, @key : String, @time_added : Time | Nil = nil, @value : String | Nil = nil)
    end
  end
end
