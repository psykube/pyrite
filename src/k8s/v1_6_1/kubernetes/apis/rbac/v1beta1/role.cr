require "yaml"
require "json"

# Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
class K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::Role
  # Standard object's metadata.
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Rules holds all the PolicyRules for this Role
  property rules : Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::PolicyRule)

  YAML.mapping({
    api_version: {type: String, default: "Role", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Role", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    rules:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Rbac::V1beta1::PolicyRule), nilable: false, key: rules, getter: false, setter: false},
  }, true)

  def initialize(@rules, @metadata = nil)
    @api_version = "Role"
    @kind = "v1beta1"
  end

  # list or watch objects of kind Role
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a Role
  def self.create(rules, metadata = nil, namespace : String = "default")
  end

  # read the specified Role
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
