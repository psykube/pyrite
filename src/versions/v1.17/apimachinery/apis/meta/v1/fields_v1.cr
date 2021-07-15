# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FieldsV1 stores a set of fields in a data structure like a Trie, in JSON format.
  #
  # Each key is either a '.' representing the field itself, and will always map to an empty set, or a string representing a sub-field or item. The string will follow one of these four formats: 'f:<name>', where <name> is the name of a field in a struct, or key in a map 'v:<value>', where <value> is the exact json formatted value of a list item 'i:<index>', where <index> is position of a item in a list 'k:<keys>', where <keys> is a map of  a list item's key fields to their unique values If a key maps to an empty Fields value, the field that key represents is part of the set.
  #
  # The exact format is defined in [sigs.k8s.io/structured-merge-diff](sigs.k8s.io/structured-merge-diff)
  class Apimachinery::Apis::Meta::V1::FieldsV1 < Kubernetes::Spec
    def initialize
    end
  end
end
