require "yaml"
require "json"

# ClusterRoleBinding references a ClusterRole, but not contain it. It can reference a ClusterRole in the global namespace, and adds who information via Subject.
class K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding
  # Standard object's metadata.
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # RoleRef can only reference a ClusterRole in the global namespace.If the RoleRef cannot be resolved, the Authorizer must return an error.
  property role_ref : ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleRef

  # Subjects holds references to the objects the role applies to.
  property subjects : Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Subject)

  YAML.mapping({
    api_version: {type: String, default: "ClusterRoleBinding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    role_ref:    {type: ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
    subjects:    {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: subjects, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ClusterRoleBinding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    role_ref:    {type: ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleRef, nilable: false, key: roleRef, getter: false, setter: false},
    subjects:    {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Subject), nilable: false, key: subjects, getter: false, setter: false},
  }, true)

  def initialize(@role_ref, @subjects, @metadata = nil)
    @api_version = "ClusterRoleBinding"
    @kind = "v1alpha1"
  end

  # list or watch objects of kind ClusterRoleBinding
  def self.get
    Kubernetes.client.get
  end

  # create a ClusterRoleBinding
  def self.create(role_ref, subjects, metadata = nil)
  end

  # read the specified ClusterRoleBinding
  def self.get(name : String)
    Kubernetes.client.get
  end
end
