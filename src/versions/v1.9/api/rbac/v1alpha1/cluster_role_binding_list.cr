# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBindingList is a collection of ClusterRoleBindings
  class Api::Rbac::V1alpha1::ClusterRoleBindingList < Kubernetes::List(Api::Rbac::V1alpha1::ClusterRoleBinding)
  end
end
