# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointSliceList represents a list of endpoint slices
  class Api::Discovery::V1beta1::EndpointSliceList < Kubernetes::List(Api::Discovery::V1beta1::EndpointSlice)
  end
end
