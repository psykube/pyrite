# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowDistinguisherMethod specifies the method of a flow distinguisher.
  class Api::Flowcontrol::V1beta1::FlowDistinguisherMethod < Kubernetes::Spec
    # `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @type : String)
    end
  end
end
