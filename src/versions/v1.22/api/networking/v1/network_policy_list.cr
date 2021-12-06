# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NetworkPolicyList is a list of NetworkPolicy objects.
  class Api::Networking::V1::NetworkPolicyList < Kubernetes::List(Api::Networking::V1::NetworkPolicy)
  end
end
