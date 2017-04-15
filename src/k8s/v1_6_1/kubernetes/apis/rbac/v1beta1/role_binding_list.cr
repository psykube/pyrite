require "yaml"
require "json"

# RoleBindingList is a collection of RoleBindings
class K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::RoleBindingList
  # Items is a list of RoleBindings
  property items : Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::RoleBinding)

  # Standard object's metadata.
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "RoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "RoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "RoleBindingList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind RoleBinding
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a RoleBinding
  def self.create(role_ref, subjects, metadata = nil, namespace : String = "default")
  end

  # list or watch objects of kind RoleBinding
  def self.get
    Kubernetes.client.get
  end
end
