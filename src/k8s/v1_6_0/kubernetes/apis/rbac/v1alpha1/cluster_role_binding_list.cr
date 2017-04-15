require "yaml"
require "json"

# ClusterRoleBindingList is a collection of ClusterRoleBindings
class K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBindingList
  # Items is a list of ClusterRoleBindings
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding)

  # Standard object's metadata.
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ClusterRoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ClusterRoleBindingList"
    @kind = "v1alpha1"
  end

  # list or watch objects of kind ClusterRoleBinding
  def self.get
    Kubernetes.client.get
  end

  # create a ClusterRoleBinding
  def self.create(role_ref, subjects, metadata = nil)
  end
end
