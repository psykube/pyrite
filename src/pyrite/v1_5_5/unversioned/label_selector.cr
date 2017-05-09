# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  class Definitions::Unversioned::LabelSelector
    # matchExpressions is a list of label selector requirements. The requirements are ANDed.
    property match_expressions : Array(Unversioned::LabelSelectorRequirement)?

    # matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    property match_labels : Hash(String, String)?

    YAML.mapping({match_expressions: {type: Array(Unversioned::LabelSelectorRequirement), nilable: true, key: matchExpressions, getter: false, setter: false},
                  match_labels:      {type: Hash(String, String), nilable: true, key: matchLabels, getter: false, setter: false}}, true)

    JSON.mapping({match_expressions: {type: Array(Unversioned::LabelSelectorRequirement), nilable: true, key: matchExpressions, getter: false, setter: false},
                  match_labels:      {type: Hash(String, String), nilable: true, key: matchLabels, getter: false, setter: false}}, true)

    def initialize(@match_expressions : Array? = nil, @match_labels : Hash(String, String)? = nil)
    end
  end
end
