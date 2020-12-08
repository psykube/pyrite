# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
  class Api::Rbac::V1beta1::ClusterRole
    getter api_version : String = "rbac.authorization.k8s.io/v1beta1"
    getter kind : String = "ClusterRole"
    # AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
    property aggregation_rule : Api::Rbac::V1beta1::AggregationRule | Nil

    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this ClusterRole
    property rules : Array(Api::Rbac::V1beta1::PolicyRule) | Nil

    ::YAML.mapping({
      api_version:      {type: String, default: "rbac.authorization.k8s.io/v1beta1", key: "apiVersion", setter: false},
      kind:             {type: String, default: "ClusterRole", key: "kind", setter: false},
      aggregation_rule: {type: Api::Rbac::V1beta1::AggregationRule, nilable: true, key: "aggregationRule", getter: false, setter: false},
      metadata:         {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:            {type: Array(Api::Rbac::V1beta1::PolicyRule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:      {type: String, default: "rbac.authorization.k8s.io/v1beta1", key: "apiVersion", setter: false},
      kind:             {type: String, default: "ClusterRole", key: "kind", setter: false},
      aggregation_rule: {type: Api::Rbac::V1beta1::AggregationRule, nilable: true, key: "aggregationRule", getter: false, setter: false},
      metadata:         {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:            {type: Array(Api::Rbac::V1beta1::PolicyRule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @aggregation_rule : Api::Rbac::V1beta1::AggregationRule | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array | Nil = nil)
    end

    # create a ClusterRole
    def create_rbac_authorization_v1beta1_cluster_role(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind ClusterRole
    def self.list_rbac_authorization_v1beta1_cluster_role(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of ClusterRole
    def self.delete_rbac_authorization_v1beta1_cluster_role(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified ClusterRole
    def self.read_rbac_authorization_v1beta1_cluster_role(name : String, context : String | Nil = nil)
    end

    # replace the specified ClusterRole
    def replace_rbac_authorization_v1beta1_cluster_role(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified ClusterRole
    def patch_rbac_authorization_v1beta1_cluster_role(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a ClusterRole
    def delete_rbac_authorization_v1beta1_cluster_role(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end
  end

  module Resources::Rbac::V1beta1
    alias ClusterRole = ::Pyrite::Api::Rbac::V1beta1::ClusterRole
  end
end
