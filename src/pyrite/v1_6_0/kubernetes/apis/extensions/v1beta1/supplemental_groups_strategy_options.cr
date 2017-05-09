# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::SupplementalGroupsStrategyOptions
    # Ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end.
    property ranges : Array(Kubernetes::Apis::Extensions::V1beta1::IDRange)?

    # Rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
    property rule : String?

    YAML.mapping({ranges: {type: Array(Kubernetes::Apis::Extensions::V1beta1::IDRange), nilable: true, key: ranges, getter: false, setter: false},
                  rule:   {type: String, nilable: true, key: rule, getter: false, setter: false}}, true)

    JSON.mapping({ranges: {type: Array(Kubernetes::Apis::Extensions::V1beta1::IDRange), nilable: true, key: ranges, getter: false, setter: false},
                  rule:   {type: String, nilable: true, key: rule, getter: false, setter: false}}, true)

    def initialize(@ranges : Array? = nil, @rule : String? = nil)
    end
  end
end
