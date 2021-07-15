# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBindingList is a collection of RoleBindings
  class Api::Rbac::V1::RoleBindingList < Kubernetes::List(Api::Rbac::V1::RoleBinding)
  end
end
