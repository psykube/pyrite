# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# represents the current status of a scale subresource.
class Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleStatus
  # actual number of observed instances of the scaled object.
  property replicas : Int32

  # label query over pods that should match the replicas count.More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  property selector : Hash(String, String)?

  # label selector for pods that should match the replicas count.This is a serializated version of both map-based and more expressive set-based selectors.This is done to avoid introspection in the clients.The string will be in the same format as the query-param syntax.If the target type only supports map-based selectors, both this field and map-based selector field are populated.More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  property target_selector : String?

  YAML.mapping({replicas:        {type: Int32, nilable: false, key: replicas, getter: false, setter: false},
                selector:        {type: Hash(String, String), nilable: true, key: selector, getter: false, setter: false},
                target_selector: {type: String, nilable: true, key: targetSelector, getter: false, setter: false}}, true)

  JSON.mapping({replicas:        {type: Int32, nilable: false, key: replicas, getter: false, setter: false},
                selector:        {type: Hash(String, String), nilable: true, key: selector, getter: false, setter: false},
                target_selector: {type: String, nilable: true, key: targetSelector, getter: false, setter: false}}, true)

  def initialize(@replicas, @selector = nil, @target_selector = nil)
  end
end
