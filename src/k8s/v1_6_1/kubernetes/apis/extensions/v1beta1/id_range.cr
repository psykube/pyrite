require "yaml"
require "json"

# ID Range provides a min/max of an allowed range of IDs.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IDRange
  # Max is the end of the range, inclusive.
  property max : Int32

  # Min is the start of the range, inclusive.
  property min : Int32

  YAML.mapping({max: {type: Int32, nilable: false, key: max, getter: false, setter: false},
                min: {type: Int32, nilable: false, key: min, getter: false, setter: false}}, true)

  JSON.mapping({max: {type: Int32, nilable: false, key: max, getter: false, setter: false},
                min: {type: Int32, nilable: false, key: min, getter: false, setter: false}}, true)

  def initialize(@max, @min)
  end
end
