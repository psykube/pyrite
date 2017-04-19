# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Run A sUser Strategy Options defines the strategy type and any options used to create the strategy.
class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::RunAsUserStrategyOptions
  # Ranges are the allowed ranges of uids that may be used.
  property ranges : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IDRange)?

  # Rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  property rule : String

  YAML.mapping({ranges: {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IDRange), nilable: true, key: ranges, getter: false, setter: false},
                rule:   {type: String, nilable: false, key: rule, getter: false, setter: false}}, true)

  JSON.mapping({ranges: {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IDRange), nilable: true, key: ranges, getter: false, setter: false},
                rule:   {type: String, nilable: false, key: rule, getter: false, setter: false}}, true)

  def initialize(@ranges : Array? = nil, @rule : String? = nil)
  end
end
