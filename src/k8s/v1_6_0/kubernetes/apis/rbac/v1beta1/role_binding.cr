# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# RoleBinding references a role, but does not contain it. It can reference a Role in the same namespace or a ClusterRole in the global namespace.It adds who information via Subjects and namespace information by which namespace it exists in. RoleBindings in a given namespace only have effect in that namespace.
class K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleBinding
  # Standard object's metadata.
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace.If the RoleRef cannot be resolved, the Authorizer must return an error.
  property role_ref : ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleRef

  # Subjects holds references to the objects the role applies to.
  property subjects : Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Subject)

  YAML.mapping({
    api_version: {type: String, default: "RoleBinding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    role_ref:    {type: ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
    subjects:    {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Subject), nilable: false, key: subjects, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "RoleBinding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    role_ref:    {type: ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
    subjects:    {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Subject), nilable: false, key: subjects, getter: false, setter: false},
  }, true)

  def initialize(@role_ref, @subjects, @metadata = nil)
    @api_version = "RoleBinding"
    @kind = "v1beta1"
  end

  # list or watch objects of kind RoleBinding
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a RoleBinding
  def self.create(role_ref, subjects, pretty : String?, metadata = nil, namespace : String = "default")
  end

  # delete collection of RoleBinding
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified RoleBinding
  def self.get(pretty : String?, name : String, namespace : String = "default")
  end

  # replace the specified RoleBinding
  def replace(role_ref, subjects, pretty : String?, metadata = nil)
  end

  # delete a RoleBinding
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
