# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodSecurityPolicyList is a list of PodSecurityPolicy objects.
  class Api::Policy::V1beta1::PodSecurityPolicyList < Kubernetes::List(Api::Policy::V1beta1::PodSecurityPolicy)
  end
end
