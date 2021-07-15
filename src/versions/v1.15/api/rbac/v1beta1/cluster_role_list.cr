# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleList is a collection of ClusterRoles
  class Api::Rbac::V1beta1::ClusterRoleList < Kubernetes::List(Api::Rbac::V1beta1::ClusterRole)
  end
end
