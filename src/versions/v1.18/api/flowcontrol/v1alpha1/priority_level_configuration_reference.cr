# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference < Kubernetes::Spec
    # `name` is the name of the priority level configuration being referenced Required.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
