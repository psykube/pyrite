# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBindingList is a collection of ClusterRoleBindings. Deprecated in v1.17 in favor of [rbac.authorization.k8s.io/v1 ClusterRoleBindingList, and will no longer be served in v1.20.](rbac.authorization.k8s.io/v1 ClusterRoleBindingList, and will no longer be served in v1.20.)
  class Api::Rbac::V1beta1::ClusterRoleBindingList < Kubernetes::List(Api::Rbac::V1beta1::ClusterRoleBinding)
  end
end
