# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleList is a collection of Roles. Deprecated in v1.17 in favor of [rbac.authorization.k8s.io/v1 RoleList, and will no longer be served in v1.22.](rbac.authorization.k8s.io/v1 RoleList, and will no longer be served in v1.22.)
  class Api::Rbac::V1alpha1::RoleList < Kubernetes::List(Api::Rbac::V1alpha1::Role)
  end
end
