# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# A null or empty node selector term matches no objects.
class Pyrite::V1_6_1::Kubernetes::Api::V1::NodeSelectorTerm
  # Required. A list of node selector requirements. The requirements are ANDed.
  property match_expressions : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeSelectorRequirement)

  YAML.mapping({match_expressions: {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeSelectorRequirement), nilable: false, key: matchExpressions, getter: false, setter: false}}, true)

  JSON.mapping({match_expressions: {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeSelectorRequirement), nilable: false, key: matchExpressions, getter: false, setter: false}}, true)

  def initialize(@match_expressions : Array? = nil)
  end
end
