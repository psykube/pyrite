# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Run A sUser Strategy Options defines the strategy type and any options used to create the strategy.
  class Api::Extensions::V1beta1::RunAsUserStrategyOptions < Kubernetes::Spec
    # Ranges are the allowed ranges of uids that may be used.
    @[::JSON::Field(key: "ranges")]
    @[::YAML::Field(key: "ranges")]
    property ranges : Array(Api::Extensions::V1beta1::IDRange) | Nil

    # Rule is the strategy that will dictate the allowable RunAsUser values that may be set.
    @[::JSON::Field(key: "rule")]
    @[::YAML::Field(key: "rule")]
    property rule : String

    def initialize(*, @ranges : Array | Nil = nil, @rule : String)
    end
  end
end
