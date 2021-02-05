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

    # If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
    @[::JSON::Field(key: "port")]
    @[::YAML::Field(key: "port")]
    property port : Int32 | Nil

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil, @port : Int32 | Nil = nil)
    end
  end
end
