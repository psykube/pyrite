require "yaml"
require "json"

# RoleList is a collection of Roles
class K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleList
  # Items is a list of Roles
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Role)

  # Standard object's metadata.
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "RoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Role), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "RoleList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Role), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "RoleList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind Role
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a Role
  def self.create(rules, metadata = nil, namespace : String = "default")
  end

  # list or watch objects of kind Role
  def self.get
    Kubernetes.client.get
  end
end
