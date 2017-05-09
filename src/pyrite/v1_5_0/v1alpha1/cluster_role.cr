# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
  class Definitions::V1alpha1::ClusterRole
    # Standard object's metadata.
    property metadata : V1::ObjectMeta

    # Rules holds all the PolicyRules for this ClusterRole
    property rules : Array(V1alpha1::PolicyRule)

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  rules:    {type: Array(V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  rules:    {type: Array(V1alpha1::PolicyRule), nilable: false, key: rules, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @rules : Array? = nil)
    end
  end
end
