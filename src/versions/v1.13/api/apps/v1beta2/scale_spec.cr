# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ScaleSpec describes the attributes of a scale subresource
  class Api::Apps::V1beta2::ScaleSpec < Kubernetes::Spec
    # desired number of instances for the scaled object.
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32 | Nil

    def initialize(*, @replicas : Int32 | Nil = nil)
    end
  end
end
