# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy.
class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::SupplementalGroupsStrategyOptions
  # Ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end.
  property ranges : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IDRange)?

  # Rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  property rule : String?

  YAML.mapping({ranges: {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IDRange), nilable: true, key: ranges, getter: false, setter: false},
                rule:   {type: String, nilable: true, key: rule, getter: false, setter: false}}, true)

  JSON.mapping({ranges: {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IDRange), nilable: true, key: ranges, getter: false, setter: false},
                rule:   {type: String, nilable: true, key: rule, getter: false, setter: false}}, true)

  def initialize(@ranges : Array? = nil, @rule : String? = nil)
  end
end
