# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Node affinity is a group of node affinity scheduling rules.
class K8S::V1_6_0::Kubernetes::Api::V1::NodeAffinity
  # The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions.The node that is most preferred is the one with the greatest sum of weights, i.e.for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  property preferred_during_scheduling_ignored_during_execution : Array(::K8S::V1_6_0::Kubernetes::Api::V1::PreferredSchedulingTerm)?

  # If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node.If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g.due to an update), the system may or may not try to eventually evict the pod from its node.
  property required_during_scheduling_ignored_during_execution : ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelector

  YAML.mapping({preferred_during_scheduling_ignored_during_execution: {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::PreferredSchedulingTerm), nilable: true, key: preferredDuringSchedulingIgnoredDuringExecution, getter: false, setter: false},
                required_during_scheduling_ignored_during_execution:  {type: ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelector, nilable: true, key: requiredDuringSchedulingIgnoredDuringExecution, getter: false, setter: false}}, true)

  JSON.mapping({preferred_during_scheduling_ignored_during_execution: {type: Array(::K8S::V1_6_0::Kubernetes::Api::V1::PreferredSchedulingTerm), nilable: true, key: preferredDuringSchedulingIgnoredDuringExecution, getter: false, setter: false},
                required_during_scheduling_ignored_during_execution:  {type: ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelector, nilable: true, key: requiredDuringSchedulingIgnoredDuringExecution, getter: false, setter: false}}, true)

  def initialize(@preferred_during_scheduling_ignored_during_execution = nil, @required_during_scheduling_ignored_during_execution = nil)
  end
end
