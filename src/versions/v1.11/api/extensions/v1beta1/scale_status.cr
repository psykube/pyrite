# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # represents the current status of a scale subresource.
  class Api::Extensions::V1beta1::ScaleStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # actual number of observed instances of the scaled object.
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32

    # label query over pods that should match the replicas count. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Hash(String, String) | Nil

    # label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[::JSON::Field(key: "targetSelector")]
    @[::YAML::Field(key: "targetSelector")]
    property target_selector : String | Nil

    def initialize(*, @replicas : Int32, @selector : Hash(String, String) | Nil = nil, @target_selector : String | Nil = nil)
    end
  end
end
