require "yaml"
require "json"

# ClusterRoleList is a collection of ClusterRoles
class K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleList
  # Items is a list of ClusterRoles
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRole)

  # Standard object's metadata.
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRole), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ClusterRoleList"
    @kind = "v1alpha1"
  end

  # list or watch objects of kind ClusterRole
  def self.get
    Kubernetes.client.get
  end

  # create a ClusterRole
  def self.create(rules, metadata = nil)
  end
end
