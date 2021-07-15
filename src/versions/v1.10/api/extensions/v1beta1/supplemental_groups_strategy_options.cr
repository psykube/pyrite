# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy.
  class Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions < Kubernetes::Spec
    # Ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end.
    @[::JSON::Field(key: "ranges")]
    @[::YAML::Field(key: "ranges")]
    property ranges : Array(Api::Extensions::V1beta1::IDRange) | Nil

    # Rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
    @[::JSON::Field(key: "rule")]
    @[::YAML::Field(key: "rule")]
    property rule : String | Nil

    def initialize(*, @ranges : Array | Nil = nil, @rule : String | Nil = nil)
    end
  end
end
