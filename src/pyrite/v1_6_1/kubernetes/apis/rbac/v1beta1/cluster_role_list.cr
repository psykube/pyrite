# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # ClusterRoleList is a collection of ClusterRoles
  class Definitions::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleList
    # Items is a list of ClusterRoles
    property items : Array(Kubernetes::Apis::Rbac::V1beta1::ClusterRole)

    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Rbac::V1beta1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Rbac::V1beta1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "rbac/v1beta1"
      @kind = "ClusterRoleList"
    end
  end

  module Resources::Rbac::V1beta1
    include Resource
    alias ClusterRoleList = Definitions::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleList
  end
end
