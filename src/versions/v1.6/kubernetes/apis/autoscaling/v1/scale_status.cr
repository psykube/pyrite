# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ScaleStatus represents the current status of a scale subresource.
  class Kubernetes::Apis::Autoscaling::V1::ScaleStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # actual number of observed instances of the scaled object.
    @[JSON::Field(key: "replicas")]
    @[YAML::Field(key: "replicas")]
    property replicas : Int32

    # label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    @[JSON::Field(key: "selector")]
    @[YAML::Field(key: "selector")]
    property selector : String | Nil

    def initialize(*, @replicas : Int32, @selector : String | Nil = nil)
    end
  end
end
