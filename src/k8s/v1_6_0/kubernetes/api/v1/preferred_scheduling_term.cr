require "yaml"
require "json"

# An empty preferred scheduling term matches all objects with implicit weight 0 (i.e.it's a no-op).A null preferred scheduling term matches no objects (i.e.is also a no-op).
class K8S::V1_6_0::Kubernetes::Api::V1::PreferredSchedulingTerm
  # A node selector term, associated with the corresponding weight.
  property preference : ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelectorTerm

  # Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  property weight : Int32

  YAML.mapping({preference: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelectorTerm, nilable: false, key: preference, getter: false, setter: false},
                weight:     {type: Int32, nilable: false, key: weight, getter: false, setter: false}}, true)

  JSON.mapping({preference: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelectorTerm, nilable: false, key: preference, getter: false, setter: false},
                weight:     {type: Int32, nilable: false, key: weight, getter: false, setter: false}}, true)

  def initialize(@preference, @weight)
  end
end
