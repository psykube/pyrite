require "yaml"
require "json"

# ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
class K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::ClusterRole
  # Standard object's metadata.
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Rules holds all the PolicyRules for this ClusterRole
  property rules : Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::PolicyRule)

  YAML.mapping({
    api_version: {type: String, default: "ClusterRole", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRole", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  def initialize(@rules, @metadata = nil)
    @api_version = "ClusterRole"
    @kind = "v1beta1"
  end

  # list or watch objects of kind ClusterRole
  def self.get
    Kubernetes.client.get
  end

  # create a ClusterRole
  def self.create(rules, metadata = nil)
  end

  # read the specified ClusterRole
  def self.get(name : String)
    Kubernetes.client.get
  end
end
