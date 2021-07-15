# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Pod Security Policy List is a list of PodSecurityPolicy objects.
  class Api::Extensions::V1beta1::PodSecurityPolicyList < Kubernetes::List(Api::Extensions::V1beta1::PodSecurityPolicy)
  end
end
