# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class KubeAggregator::Apis::Apiregistration::V1beta1::ServiceReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the name of the service
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    # Namespace is the namespace of the service
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String | Nil

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
