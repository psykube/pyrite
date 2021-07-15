# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LeaseList is a list of Lease objects.
  class Api::Coordination::V1beta1::LeaseList < Kubernetes::List(Api::Coordination::V1beta1::Lease)
  end
end
