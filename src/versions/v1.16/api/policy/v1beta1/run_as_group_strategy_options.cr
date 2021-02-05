# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy.
  class Api::Policy::V1beta1::RunAsGroupStrategyOptions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
    @[JSON::Field(key: "ranges")]
    @[YAML::Field(key: "ranges")]
    property ranges : Array(Api::Policy::V1beta1::IDRange) | Nil

    # rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
    @[JSON::Field(key: "rule")]
    @[YAML::Field(key: "rule")]
    property rule : String

    def initialize(*, @ranges : Array | Nil = nil, @rule : String)
    end
  end
end
