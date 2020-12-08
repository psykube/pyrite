# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
  class Api::Rbac::V1::AggregationRule
    # ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
    property cluster_role_selectors : Array(Apimachinery::Apis::Meta::V1::LabelSelector) | Nil

    ::YAML.mapping({
      cluster_role_selectors: {type: Array(Apimachinery::Apis::Meta::V1::LabelSelector), nilable: true, key: "clusterRoleSelectors", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      cluster_role_selectors: {type: Array(Apimachinery::Apis::Meta::V1::LabelSelector), nilable: true, key: "clusterRoleSelectors", getter: false, setter: false},
    }, true)

    def initialize(*, @cluster_role_selectors : Array | Nil = nil)
    end
  end
end
