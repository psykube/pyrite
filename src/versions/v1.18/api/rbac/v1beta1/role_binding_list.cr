# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBindingList is a collection of RoleBindings Deprecated in v1.17 in favor of [rbac.authorization.k8s.io/v1 RoleBindingList, and will no longer be served in v1.20.](rbac.authorization.k8s.io/v1 RoleBindingList, and will no longer be served in v1.20.)
  class Api::Rbac::V1beta1::RoleBindingList < Kubernetes::List(Api::Rbac::V1beta1::RoleBinding)
  end
end
