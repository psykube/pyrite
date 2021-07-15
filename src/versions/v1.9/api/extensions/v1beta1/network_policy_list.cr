# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED 1.9 - This group version of NetworkPolicyList is deprecated by [networking/v1/NetworkPolicyList. Network Policy List is a list of NetworkPolicy objects.](networking/v1/NetworkPolicyList. Network Policy List is a list of NetworkPolicy objects.)
  class Api::Extensions::V1beta1::NetworkPolicyList < Kubernetes::List(Api::Extensions::V1beta1::NetworkPolicy)
  end
end
