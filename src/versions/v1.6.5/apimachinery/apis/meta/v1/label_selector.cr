# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  class Apimachinery::Apis::Meta::V1::LabelSelector
    # matchExpressions is a list of label selector requirements. The requirements are ANDed.
    property match_expressions : Array(Apimachinery::Apis::Meta::V1::LabelSelectorRequirement) | Nil

    # matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    property match_labels : Hash(String, String) | Nil

    ::YAML.mapping({
      match_expressions: {type: Array(Apimachinery::Apis::Meta::V1::LabelSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
      match_labels:      {type: Hash(String, String), nilable: true, key: "matchLabels", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      match_expressions: {type: Array(Apimachinery::Apis::Meta::V1::LabelSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
      match_labels:      {type: Hash(String, String), nilable: true, key: "matchLabels", getter: false, setter: false},
    }, true)

    def initialize(*, @match_expressions : Array | Nil = nil, @match_labels : Hash(String, String) | Nil = nil)
    end
  end
end
